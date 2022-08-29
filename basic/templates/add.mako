<%inherit file="layout.mako"/>
## <div class="content">
##   <h1><span class="font-semi-bold">Pyramid</span> <span class="smaller">Starter project</span></h1>
##   <p class="lead">Welcome to <span class="font-normal">${project}</span>, a&nbsp;Pyramid application generated&nbsp;by<br><span class="font-normal">Cookiecutter</span>.</p>
## </div>
<h3>Add row to ${name}</h3>
<form method="post">
    <div class="content">
    <table class="table tablesorter table-striped table-condensed">
        <thead>
            <tr>
                % for key in row.__dict__.keys():
                    ${makehead(key)}
                % endfor
            </tr>
        </thead>
        <tbody>
            <tr>
                % for key in row.__dict__.keys():
                    ${makevalue(key, row.__dict__[key])}
                % endfor
            </tr>
        </tbody>
    </table>
    </div>
    <input type="submit" name='submit' value='submit' class="btn btn-default" >
</form>

<%def name="makehead(key)">
    % if str(key)[0] != '_':
        % if 'id' not in str(key):
            <th>${key}</th>
        % endif
    % endif
</%def>

<%def name="makevalue(key, value)">
    % if str(key)[0] != '_':
        % if 'id' not in str(key):
            <td>
                <input type="text" class="form-control" name=${key} id=${key} placeholder=${key}>
            </td>
        % endif
    % endif
</%def>
