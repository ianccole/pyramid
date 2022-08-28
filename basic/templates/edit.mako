<%inherit file="layout.mako"/>
## <div class="content">
##   <h1><span class="font-semi-bold">Pyramid</span> <span class="smaller">Starter project</span></h1>
##   <p class="lead">Welcome to <span class="font-normal">${project}</span>, a&nbsp;Pyramid application generated&nbsp;by<br><span class="font-normal">Cookiecutter</span>.</p>
## </div>
<h3>Edit row</h3>
<form method="post">
    <div class="content">
    <table class="table tablesorter table-striped table-condensed">
        <thead>
            <tr>
                ## <th>Select</th>
                <th>id</th>
                <th>name</th>
                <th>value</th>
                ## <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${row.id}</td>
                <td>
                    <input type="text" class="form-control" name="name" id="name" value="${row.name}">
                </td>
                <td>
                    <input type="text" class="form-control" name="value" id="value" value="${row.value}">
                </td>
            </tr>
        </tbody>
    </table>
    </div>
    <input type="submit" name='submit' value='submit' class="btn btn-default" >
</form>
