{include file="$template/pageheader.tpl" title=$LANG.navopenticket}

<div class="alert alert-info">{$LANG.supportticketsheader}</div>

<br />

<div class="row">
  
  {foreach from=$departments item=department}
  
  <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>{$department.name}</strong>
                        </div>
                        <div class="panel-body">
                            {if $department.description}<p>{$department.description}</p>{/if}
                        </div>
                        <div class="panel-footer">
                            <center><a href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}">Abrir Nesse Departamento</a></center>
                        </div>
                    </div>
                </div>
  
  {foreachelse}
  
  <div class="alert alert-info">
    {$LANG.nosupportdepartments}
  </div>
  
  {/foreach}
  
</div>