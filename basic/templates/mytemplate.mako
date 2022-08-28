<%inherit file="layout.mako"/>
## <div class="content">
##   <h1><span class="font-semi-bold">Pyramid</span> <span class="smaller">Starter project</span></h1>
##   <p class="lead">Welcome to <span class="font-normal">${project}</span>, a&nbsp;Pyramid application generated&nbsp;by<br><span class="font-normal">Cookiecutter</span>.</p>
## </div>

<form method="post">
    <div class="content">
    <table class="table tablesorter table-striped table-condensed">
        <thead>
            <tr>
                <th>Select</th>
                <th>id</th>
                <th>name</th>
                <th>value</th>
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
            <td><input type="checkbox" value=${row.id} id='id' name='id'></td>
            <td>${row.id}</td>
            <td>${row.name}</td>
            <td>${row.value}</td>
        </tr>
    </%def>
    <input type="submit" name='delete' value='delete' class="btn btn-default" onclick="return confirm('Are you sure?')" >
    <input type="submit" name='add' value='add' class="btn btn-default" >
    <input type="submit" name='edit' value='edit' class="btn btn-default" >
</form>
