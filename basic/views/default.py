from pyramid.view import view_config
from pyramid.response import Response
from sqlalchemy.exc import SQLAlchemyError

from .. import models

import logging
log = logging.getLogger(__name__)


@view_config(route_name='home', renderer='basic:templates/mytemplate.mako')
def my_view(request):

    cmd = request.GET.get('cmd')
    log.debug('Command: %s' %cmd)

    if cmd:
        if 'add' in cmd:
            log.debug('add')

            last = request.dbsession.query(models.MyModel).order_by(models.MyModel.id.desc()).first()
            log.debug('last %s' %last.id)
            next = last.id + 1

            row = models.MyModel(name = str(next), value = str(next))
            request.dbsession.add(row)   
            # request.dbsession.commit()
    try:
        query = request.dbsession.query(models.MyModel)
        # one = query.filter(models.MyModel.name == 'one').one()
        rows = query.all()
    except SQLAlchemyError:
        return Response('bad juju', content_type='text/plain', status=500)
    # return {'one': one, 'project': 'basic'}
    return {'rows': rows}
