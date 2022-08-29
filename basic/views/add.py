from pyramid.view import view_config
from pyramid.response import Response
from sqlalchemy.exc import SQLAlchemyError
from pyramid.httpexceptions import HTTPFound

from .. import models

import logging
log = logging.getLogger(__name__)


@view_config(route_name='add', renderer='basic:templates/add.mako')
def add(request):
    table = request.matchdict.get('table')

    row = request.dbsession.query(models.MyModel).first()

    if request.method == 'POST':
        log.info(request.POST)

        name = request.POST.get('name')
        value = request.POST.get('value')

        log.info(name)
        log.info(value)

        # row = request.dbsession.query(models.MyModel).filter(models.MyModel.id==id).one()
        # row.name = name
        # row.value = value
        # request.session.flash('updated', 'success')

        row = models.MyModel(name = name, value = value)
        request.dbsession.add(row)   
        request.session.flash('added', 'success')

        next_url = request.route_url('home')
        return HTTPFound(location=next_url)

    # try:
    #     row = request.dbsession.query(models.MyModel).filter(models.MyModel.id==id).one()
    # except SQLAlchemyError:
    #     return Response('bad juju', content_type='text/plain', status=500)

    return {'row': row, 'name' : table}
