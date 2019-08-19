<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

{if not empty($pageJs)}
    {foreach $pageJs as $jsFile}
        <script type="text/javascript" language="javascript" src="{{$jsFile}}"></script>
    {/foreach}
{/if}

{if isset($exec_on_ready) && not empty($exec_on_ready)}
    <script type="text/javascript">
        {foreach $exec_on_ready as $exec_item}
            $(document).ready(function () {
                {$exec_item['func_name']}();
            });
        {/foreach}
    </script>
{/if}

</body>
</html>