<%inherit file="layout.mako"/>

## <ul class="nav nav-tabs">
##   <li role="presentation" class="active"><a href="#">Home</a></li>
##   <li role="presentation"><a href="#">Profile</a></li>
##   <li role="presentation"><a href="#">Messages</a></li>
## </ul>

## <ul class="nav nav-pills">
##   <li role="presentation" class="active"><a href="#">Home</a></li>
##   <li role="presentation"><a href="#">Profile</a></li>
##   <li role="presentation"><a href="#">Messages</a></li>
## </ul>

<style>
    .form-group {
        margin-bottom: 5px;
    }
    .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
        padding-left: 5px;
        padding-right: 5px;
    }
    .panel-body {
        padding: 5px;
    }

    .panel {
        margin-bottom: 5px;
    }

    .panel-heading {
        padding: 5px 5px;
    }    
</style>

<div class="panel panel-default">
	<div class="panel-heading">CfgMenu</div>    
		<div class="panel-body">
			% for jj in range(3):
				<div class="form-group col-md-4">
						<div class="panel panel-default">
							<div class="panel-heading">${'example_%s'%jj}</div>    
								<div class="panel-body">
										% for ii in range(10):
												<div class="form-group col-md-3">
														<label for=${ii}>${'label_%s'%ii}</label>
												</div>            
												<div class="form-group col-md-9">
														<input type="text" class="form-control" name=${ii} id=${ii} value=${ii}>
												</div>            
										% endfor
								</div>
						</div>
				</div>
			% endfor

			% for jj in range(2):
				<div class="form-group col-md-6">
					<div class="panel panel-default">
							<div class="panel-heading">${'example_%s'%jj}</div>    
								<div class="panel-body">
										% for ii in range(10):
												<div class="form-group col-md-3">
														<label for=${ii}>${'label_%s'%ii}</label>
												</div>            
												<div class="form-group col-md-9">
														<input type="text" class="form-control" name=${ii} id=${ii} value=${ii}>
												</div>            
										% endfor
								</div>
						</div>
				</div>
			% endfor
		</div>
	</div>
</div>

## <div class="panel panel-default">
##     <div class="panel-heading">example</div>    
##     <div class="panel-body">
##         % for ii in range(10):
##             ## <div class="row">
##             <div class="form-group col-md-3">
##                 <label for=${ii}>${'label_%s'%ii}</label>
##             </div>            
##             <div class="form-group col-md-9">
##                 <input type="text" class="form-control" name=${ii} id=${ii} value=${ii}>
##             </div>            
##         % endfor
##     </div>
## </div>

## <h3>Edit ${name} row</h3>
## <form method="post">
##     <div class="content">
##     <table class="table tablesorter table-striped table-condensed">
##         <thead>
##             <tr>
##                 % for key in row.__dict__.keys():
##                     ${makehead(key)}
##                 % endfor
##             </tr>
##         </thead>
##         <tbody>
##             <tr>
##                 % for key in row.__dict__.keys():
##                     ${makevalue(key, row.__dict__[key])}
##                 % endfor
##             </tr>
##         </tbody>
##     </table>
##     </div>
##     <input type="submit" name='submit' value='submit' class="btn btn-default" >
## </form>

## <%def name="makehead(key)">
##     % if str(key)[0] != '_':
##         <th>${key}</th>
##     % endif
## </%def>

## <%def name="makevalue(key, value)">
##     % if str(key)[0] != '_':
##         % if 'id' in str(key):
##             <td>${value}</td>
##         % else:
##             <td>
##                 <input type="text" class="form-control" name=${key} id=${key} value=${value}>
##             </td>
##         % endif
##     % endif
## </%def>
