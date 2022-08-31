<%inherit file="layout.mako"/>

<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">Home</a></li>
  <li role="presentation"><a href="#">Profile</a></li>
  <li role="presentation"><a href="#">Messages</a></li>
</ul>

## <ul class="nav nav-pills">
##   <li role="presentation" class="active"><a href="#">Home</a></li>
##   <li role="presentation"><a href="#">Profile</a></li>
##   <li role="presentation"><a href="#">Messages</a></li>
## </ul>

<style>
.form-group {
    margin-bottom: 1px;
}
</style>

% for jj in range(2):
    <div class="form-group col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">${'example_%s'%jj}</div>    
            <div class="panel-body">
                % for ii in range(10):
                    ## <div class="row">
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
