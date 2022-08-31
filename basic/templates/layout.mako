<!DOCTYPE html>
<html lang="${request.locale_name}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="pyramid web application">
    <meta name="author" content="Pylons Project">
    <link rel="shortcut icon" href="${request.static_url('basic:static/pyramid-16x16.png')}">

    <title>Cookiecutter Starter project for the Pyramid Web Framework</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Custom styles for this scaffold -->
    ## <link href="${request.static_url('basic:static/theme.css')}" rel="stylesheet">

    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" integrity="sha384-0s5Pv64cNZJieYFkXYOTId2HMA2Lfb6q2nAcx2n0RTLUnCAoTTsS0nKEO27XyKcY" crossorigin="anonymous"></script>
      <script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" integrity="sha384-ZoaMbDF+4LeFxg6WdScQ9nnR1QC2MIRxA1O9KWEXQwns1G8UNyIEZIQidzb0T1fo" crossorigin="anonymous"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#antenna-nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${request.route_url('home')}">DemoApp</a>
      </div>

      <div class="collapse navbar-collapse" id="antenna-nav">
        <ul class="nav navbar-nav">
          <li><a href="${request.route_url('MyModel')}">MyModel</a></li>
          <li><a href="${request.route_url('CfgVarType')}">CfgVarType</a></li>
          <li><a href="${request.route_url('CfgMenu')}">CfgMenu</a></li>
          ## <li><a href="${request.route_url('unitsnoslash')}">Units</a></li>
          ## <li><a href="${request.route_url('testtypes')}">TestTypes</a></li>
          ## <li><a href="${request.route_url('testsets')}">TestSets</a></li>
          ## <li><a href="${request.route_url('testsnoslash')}">Tests</a></li>
          ## <li><a href="${request.route_url('analysis')}">Analysis</a></li>
        </ul>
        ## <form class="navbar-form navbar-right">
        ##   <div class="form-group">
        ##     <input type="text" class="form-control" placeholder="Search" name="search" id="search">
        ##   </div>
        ##   ## <button type="submit" class="btn btn-default">Submit</button>
        ## </form>
      </div>
    </nav>

    <div class="starter-template1">
      <div class="container">
        <div class="row">
          ## <div class="col-md-2">
          ##   <img class="logo img-responsive" src="${request.static_url('basic:static/pyramid.png') }" alt="pyramid web framework">
          ## </div>

          % if request.session.peek_flash('success'):
            <div id="flash">
              <% flash = request.session.pop_flash('success') %>
              % for message in flash:
                <div class="alert alert-success alert-dismissible" role="alert">
                  ${message}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              % endfor
            </div>
          % endif

          % if request.session.peek_flash('info'):
            <div id="flash">
              <% flash = request.session.pop_flash('info') %>
              % for message in flash:
                <div class="alert alert-info alert-dismissible" role="alert">
                  ${message}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              % endfor
            </div>
          % endif

          % if request.session.peek_flash('warn'):
            <div id="flash">
              <% flash = request.session.pop_flash('warn') %>
              % for message in flash:
                <div class="alert alert-warning alert-dismissible" role="alert">
                  ${message}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              % endfor
            </div>
          % endif

          % if request.session.peek_flash('danger'):
            <div id="flash">
              <% flash = request.session.pop_flash('danger') %>
              % for message in flash:
                <div class="alert alert-danger alert-dismissible" role="alert">
                  ${message}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
                </div>
              % endfor
            </div>
          % endif

          <div class="col-md-10">
            ${ next.body() }
          </div>
        </div>
        ## <div class="row">
        ##   <div class="links">
        ##     <ul>
        ##       <li><i class="glyphicon glyphicon-cog icon-muted"></i><a href="https://github.com/Pylons/pyramid">Github Project</a></li>
        ##       <li><i class="glyphicon glyphicon-globe icon-muted"></i><a href="https://webchat.freenode.net/?channels=pyramid">IRC Channel</a></li>
        ##       <li><i class="glyphicon glyphicon-home icon-muted"></i><a href="https://pylonsproject.org">Pylons Project</a></li>
        ##     </ul>
        ##   </div>
        ## </div>
        ## <div class="row">
        ##   <div class="copyright">
        ##     Copyright &copy; Pylons Project
        ##   </div>
        ## </div>
      </div>
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>

