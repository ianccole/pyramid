<%inherit file="layout.mako"/>

<h3>Edit ${name} row</h3>
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
        <th>${key}</th>
    % endif
</%def>

<%def name="makevalue(key, value)">
    % if str(key)[0] != '_':
        % if 'id' in str(key):
            <td>${value}</td>
        % else:
            <td>
                <input type="text" class="form-control" name=${key} id=${key} value=${value}>
            </td>
        % endif
    % endif
</%def>
