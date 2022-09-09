def includeme(config):
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home',            '/')
    config.add_route('MyModel',         '/MyModel')
    config.add_route('MyModelAdd',      '/MyModelAdd/')
    config.add_route('MyModelDel',      '/MyModelDel/{id}')
    config.add_route('MyModelEdit',     '/MyModelEdit/{id}')

    config.add_route('CfgVarType',      '/CfgVarType')
    config.add_route('CfgVarTypeAdd',   '/CfgVarTypeAdd')
    config.add_route('CfgVarTypeDel',   '/CfgVarTypeDel/{id}')
    config.add_route('CfgVarTypeEdit',  '/CfgVarTypeEdit/{id}')

    config.add_route('CfgMenu',         '/CfgMenu')

    config.add_route('events',          '/events')
    config.add_route('eventdemo',       '/eventdemo')
