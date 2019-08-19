<h1>Users List</h1>
<table class="table table-dark">
    <tr>
        <th>USER ID</th>
        <th>USER NAME</th>
    </tr>
    {foreach from=$users key=k item=user}
        <tr>
            <td>{$k}</td>
            <td>{$user}</td>
        </tr>
    {/foreach}
</table>