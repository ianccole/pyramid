<%inherit file="layout.mako"/>

<h3>${name}</h3>
<div class="content">
<table class="table tablesorter table-striped table-condensed">
    <thead>
        <tr>
            % for key in rows[0].__dict__.keys():
                ${makehead(key)}
            % endfor
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    % for row in rows:
        ${makerow(row)}
    % endfor
    </tbody>
</table>
</div>

<%def name="makerow(row)">
    <tr>
        % for key in row.__dict__.keys():
            ${makevalue(key, row.__dict__[key])}
        % endfor

        <td>
            <small><a href="${request.route_url('edit', id=row.id, _query=dic)}">edit</a></small>
            <small><a href="${request.route_url('delete', id=row.id, _query=dic)}">delete</a></small> 
        </td>
    </tr>
</%def>
<a href="${request.route_url('add')}" class="btn btn-default">add</a>
    
<%def name="makehead(key)">
    % if str(key)[0] != '_':
        <th>${key}</th>
    % endif
</%def>

<%def name="makevalue(key, value)">
    % if str(key)[0] != '_':
        <td>${value}</td>

        ## % if 'id' in str(key):
        ##     <td>${value}</td>
        ## % else:
        ##     <td>
        ##         <input type="text" class="form-control" name=${value} id=${value} value=${value}>
        ##     </td>
        ## % endif
    % endif
</%def>
