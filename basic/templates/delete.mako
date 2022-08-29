<%inherit file="layout.mako"/>
## <div class="content">
##   <h1><span class="font-semi-bold">Pyramid</span> <span class="smaller">Starter project</span></h1>
##   <p class="lead">Welcome to <span class="font-normal">${project}</span>, a&nbsp;Pyramid application generated&nbsp;by<br><span class="font-normal">Cookiecutter</span>.</p>
## </div>
<h3>Delete row from ${name}</h3>
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
    <input type="submit" name='submit' value='delete' class="btn btn-default" onclick="return confirm('Are you sure?')">
</form>

<%def name="makehead(key)">
    % if str(key)[0] != '_':
        <th>${key}</th>
    % endif
</%def>

<%def name="makevalue(key, value)">
    % if str(key)[0] != '_':
        <td>${value}</td>
    % endif
</%def>
