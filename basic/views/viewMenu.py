from pyramid.view import view_config
from pyramid.response import Response
from sqlalchemy.exc import SQLAlchemyError
from pyramid.httpexceptions import HTTPFound

from .. import models

import logging
log = logging.getLogger(__name__)


@view_config(route_name='CfgMenu', renderer='basic:templates/CfgMenu.mako')
def viewCfgMenu(request):

    return {}

# class MyModelView:
#     def __init__(self, request):
#         self.request = request
#         self.table_name = 'MyModel'
#         self.table = models.MyModel

#     @view_config(route_name='home', renderer='basic:templates/display.mako')
#     @view_config(route_name='MyModel', renderer='basic:templates/display.mako')
#     def show(self):

#         try:
#             rows = self.request.dbsession.query(self.table).all()
#         except SQLAlchemyError:
#             return Response('bad juju', content_type='text/plain', status=500)

#         return {'rows': rows, 'name' : self.table_name}

#     @view_config(route_name='MyModelAdd', renderer='basic:templates/add.mako')
#     def add(self):
#         row = self.request.dbsession.query(self.table).first()

#         if self.request.method == 'POST':
#             log.info(self.request.POST)

#             name = self.request.POST.get('name')
#             value = self.request.POST.get('value')

#             log.info(name)
#             log.info(value)

#             row = self.table(name = name, value = value)
#             self.request.dbsession.add(row)   
#             self.request.session.flash('added', 'success')

#             next_url = self.request.route_url('home')
#             return HTTPFound(location=next_url)

#         return {'row': row, 'name' : self.table_name}

#     @view_config(route_name='MyModelDel', renderer='basic:templates/delete.mako')
#     def delete(self):
#         id = self.request.matchdict.get('id')

#         if self.request.method == 'POST':
#             log.info(self.request.POST)

#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#             self.request.dbsession.delete(row)
#             self.request.session.flash('deleted', 'success')

#             next_url = self.request.route_url('home')
#             return HTTPFound(location=next_url)

#         try:
#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#         except SQLAlchemyError:
#             return Response('bad juju', content_type='text/plain', status=500)

#         return {'row': row, 'name' : self.table_name}

#     @view_config(route_name='MyModelEdit', renderer='basic:templates/edit.mako')
#     def edit(self):
#         id = self.request.matchdict.get('id')

#         if self.request.method == 'POST':
#             log.info(self.request.POST)

#             name = self.request.POST.get('name')
#             value = self.request.POST.get('value')

#             log.info(name)
#             log.info(value)

#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#             row.name = name
#             row.value = value
#             self.request.session.flash('updated', 'success')

#             next_url = self.request.route_url('home')
#             return HTTPFound(location=next_url)

#         try:
#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#         except SQLAlchemyError:
#             return Response('bad juju', content_type='text/plain', status=500)
#         log.info(row.__dict__.items())
#         return {'row': row, 'name' : 'MyModel'}

# class CfgVarTypeView:
#     def __init__(self, request):
#         self.request = request
#         self.table_name = 'CfgVarType'
#         self.table = models.CfgVarTypeModel

#     @view_config(route_name='CfgVarType', renderer='basic:templates/display.mako')
#     def show(self):

#         try:
#             rows = self.request.dbsession.query(self.table).all()
#         except SQLAlchemyError:
#             return Response('bad juju', content_type='text/plain', status=500)

#         return {'rows': rows, 'name' : self.table_name}

#     @view_config(route_name='CfgVarTypeAdd', renderer='basic:templates/add.mako')
#     def add(self):
#         row = self.request.dbsession.query(self.table).first()

#         if self.request.method == 'POST':
#             log.info(self.request.POST)

#             name = self.request.POST.get('name')
#             # value = self.request.POST.get('value')

#             log.info(name)
#             # log.info(value)

#             row = self.table(name = name)
#             self.request.dbsession.add(row)   
#             self.request.session.flash('added', 'success')

#             next_url = self.request.route_url(self.table_name)
#             return HTTPFound(location=next_url)

#         return {'row': row, 'name' : self.table_name}

#     @view_config(route_name='CfgVarTypeDel', renderer='basic:templates/delete.mako')
#     def delete(self):
#         id = self.request.matchdict.get('id')

#         if self.request.method == 'POST':
#             log.info(self.request.POST)

#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#             self.request.dbsession.delete(row)
#             self.request.session.flash('deleted', 'success')

#             next_url = self.request.route_url(self.table_name)
#             return HTTPFound(location=next_url)

#         try:
#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#         except SQLAlchemyError:
#             return Response('bad juju', content_type='text/plain', status=500)

#         return {'row': row, 'name' : self.table_name}

#     @view_config(route_name='CfgVarTypeEdit', renderer='basic:templates/edit.mako')
#     def edit(self):
#         id = self.request.matchdict.get('id')

#         if self.request.method == 'POST':
#             log.info(self.request.POST)

#             name = self.request.POST.get('name')
#             # value = self.request.POST.get('value')

#             log.info(name)
#             # log.info(value)

#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#             row.name = name
#             # row.value = value
#             self.request.session.flash('updated', 'success')

#             next_url = self.request.route_url(self.table_name)
#             return HTTPFound(location=next_url)

#         try:
#             row = self.request.dbsession.query(self.table).filter(self.table.id==id).one()
#         except SQLAlchemyError:
#             return Response('bad juju', content_type='text/plain', status=500)
#         log.info(row.__dict__.items())
#         return {'row': row, 'name' : 'MyModel'}
