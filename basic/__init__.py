from pyramid.config import Configurator
from pyramid.session import SignedCookieSessionFactory

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    my_session_factory = SignedCookieSessionFactory('itsaseekreet')
    with Configurator(settings=settings) as config:
        config.include('pyramid_mako')
        config.include('.routes')
        config.include('.models')
        config.scan()
        config.set_session_factory(my_session_factory)
    return config.make_wsgi_app()
