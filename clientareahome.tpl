<div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{$clientsstats.productsnumactive}</div>
                                    <div>Serviços Ativos</div>
                                </div>
                            </div>
                        </div>
                        <a href="clientarea.php?action=products">
                            <div class="panel-footer">
                                <span class="pull-left">Ver todos</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-globe fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{$clientsstats.numactivedomains}</div>
                                    <div>Domínios Ativos</div>
                                </div>
                            </div>
                        </div>
                        <a href="clientarea.php?action=domains">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Todos</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-tags fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{$clientsstats.numtickets}</div>
                                    <div>Tickets</div>
                                </div>
                            </div>
                        </div>
                        <a href="supporttickets.php">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Todos</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-credit-card fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{$clientsstats.numdueinvoices}</div>
                                    <div>Faturas Abertas</div>
                                </div>
                            </div>
                        </div>
                        <a href="clientarea.php?action=invoices">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Todas</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            
            {if $announcements}
<div class="alert alert-warning">
  <strong>{$LANG.ourlatestnews}:</strong> {$announcements.0.text|strip_tags|truncate:100:'...'} - <a href="announcements.php?id={$announcements.0.id}">{$LANG.more}...</a>
</div>
{/if}

{if $ccexpiringsoon}
<div class="alert alert-danger">
  <strong>{$LANG.ccexpiringsoon}:</strong> {$LANG.ccexpiringsoondesc|sprintf2:'<a href="clientarea.php?action=creditcard">':'</a>'}
</div>
{/if}

{if $clientsstats.incredit}
<div class="alert alert-success">
  <strong>{$LANG.availcreditbal}:</strong> {$LANG.availcreditbaldesc|sprintf2:$clientsstats.creditbalance}
</div>
{/if}

{if $clientsstats.numoverdueinvoices>0}
<div class="alert alert-danger">
  <strong>{$LANG.youhaveoverdueinvoices|sprintf2:$clientsstats.numoverdueinvoices}:</strong> {$LANG.overdueinvoicesdesc|sprintf2:'<a href="clientarea.php?action=masspay&all=true">':'</a>'}
</div>
{/if}
           
            
{if in_array('tickets',$contactpermissions)}


<div class="table-responsive">
	<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="glyphicon glyphicon-tags"></i> {$LANG.supportticketsopentickets} <span class="badge badge-info">{$clientsstats.numactivetickets}</span>
                        <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Ações
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="submitticket.php">Abrir Novo Ticket</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="supporttickets.php">Ver Todos Tickets</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div>
                            </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover">
	  <thead>
	    <tr>
	      <th class="gradeA"><a href="supporttickets.php?orderby=date">{$LANG.supportticketsdate}</a></th>
	      <th class="gradeA"><a href="supporttickets.php?orderby=dept">{$LANG.supportticketsdepartment}</a></th>
	      <th class="gradeA"><a href="supporttickets.php?orderby=subject">{$LANG.supportticketssubject}</a></th>
	      <th class="gradeA"><a href="supporttickets.php?orderby=status">{$LANG.supportticketsstatus}</a></th>
	      <th class="headerSortdesc"><a href="supporttickets.php?orderby=lastreply">{$LANG.supportticketsticketlastupdated}</a></th>
	      <th>&nbsp;</th>
	    </tr>
	  </thead>
	  <tbody>
	    {foreach from=$tickets item=ticket}
	    <tr>
	      <td>{$ticket.date}</td>
	      <td>{$ticket.department}</td>
	      <td><div align="left"><img src="images/article.gif" alt="Ticket" border="0" />&nbsp;<a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}">{if $ticket.unread}<strong>{/if}#{$ticket.tid} - {$ticket.subject}{if $ticket.unread}</strong>{/if}</a></div></td>
	      <td>{$ticket.status}</td>
	      <td>{$ticket.lastreply}</td>
	      <td class="textcenter"><a href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}" class="btn btn-danger btn-xs">{$LANG.supportticketsviewticket}</a></td>
	    </tr>
	    {foreachelse}
	    <tr>
	      <td colspan="6" class="textcenter">{$LANG.supportticketsnoneopen}</td>
	    </tr>
	    {/foreach}
	  </tbody>
	</table>
                            <!-- /.list-group -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
</div>
{/if}

{if in_array('invoices',$contactpermissions)}

<form method="post" action="clientarea.php?action=masspay">
	<div class="table-responsive">
	  <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="glyphicon glyphicon-credit-card"></i> {$LANG.invoicesdue} <span class="badge badge-important">{$clientsstats.numdueinvoices}</span>
                        <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Ações
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="clientarea.php?action=invoices">Ver Todas Faturas</a>
                                        </li>
                                        <li><a href="clientarea.php?action=masspay&all=true">Pagamento em Massa</a>
                                        </li>
                                        <li><a href="#">Adicionar Saldo</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Confirmar Pagamento</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover">
	    <thead>
	      <tr>
	        {if $masspay}<th class="textcenter"></th>{/if}
	        <th class="headerSortdesc"><a href="clientarea.php?action=invoices&orderby=id">{$LANG.invoicestitle}</a></th>
	        <th{if $orderby eq "date"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=date">{$LANG.invoicesdatecreated}</a></th>
	        <th{if $orderby eq "duedate"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=duedate">{$LANG.invoicesdatedue}</a></th>
	        <th{if $orderby eq "total"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=total">Valor</a></th>
	        <th{if $orderby eq "balance"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=balance">{$LANG.invoicesbalance}</a></th>
	        <th{if $orderby eq "status"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=status">{$LANG.invoicesstatus}</a></th>
	        <th>&nbsp;</th>
	      </tr>
	    </thead>
	    <tbody>
	      {foreach from=$invoices item=invoice}
	      <tr>
	        {if $masspay}<td class="text-center"><input type="checkbox" name="invoiceids[]" value="{$invoice.id}" class="invids" /></td>{/if}
	        <td><a href="viewinvoice.php?id={$invoice.id}" target="_blank">{$invoice.invoicenum}</a></td>
	        <td>{$invoice.datecreated}</td>
	        <td>{$invoice.datedue}</td>
	        <td>{$invoice.total}</td>
	        <td>{$invoice.balance}</td>
	        <td><span class="label label-primary {$invoice.rawstatus}">{$invoice.statustext}</span></td>
	        <td class="textcenter"><a href="viewinvoice.php?id={$invoice.id}" target="_blank" class="btn btn-danger btn-xs">{$LANG.invoicesview}</a></td>
	      </tr>
	      {foreachelse}
	      <tr>
	        <td colspan="{if $masspay}8{else}7{/if}" class="textcenter">{$LANG.invoicesnoneunpaid}</td>
	      </tr>
	      {/foreach}
	      {if $invoices}
	      <tr>
	        <td colspan="{if $masspay}4{else}3{/if}">{if $masspay}<div align="left"><input type="submit" value="{$LANG.masspayselected}" class="btn btn-xs btn-danger" /> <a href="clientarea.php?action=masspay&all=true" class="btn btn-xs btn-success"><i class="icon-ok-circle icon-white"></i> {$LANG.masspayall}</a></div>{/if}</td>
	        <td class="text-right"><strong>Total</strong></td>
	        <td><strong>{$totalbalance}</strong></td>
	        <td colspan="2">&nbsp;</td>
	      </tr>
	      {/if}
	    </tbody>
	  </table>
                            <!-- /.list-group -->
                          
                        </div>
                        <!-- /.panel-body -->
                    </div>
	</div>
</form>

{foreach from=$addons_html item=addon_html}
  <div style="margin:15px 0;">{$addon_html}</div>
{/foreach}


<div class="row">

  <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Meus Dados
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="clientarea.php?action=details">
                                            Alterar Dados
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.sabaia.com.br/testes/clientarea.php?action=changepw">
                                             Alterar Senha
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.sabaia.com.br/testes/clientarea.php?action=contacts">
                                            Contatos/Sub-Contatos
                                        </a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="panel-body">
                            <p><strong>{$clientsdetails.firstname} {$clientsdetails.lastname} {if $clientsdetails.companyname}({$clientsdetails.companyname}){/if}</strong></p>
    <p>{$clientsdetails.address1}{if $clientsdetails.address2}, {$clientsdetails.address2}{/if}</p>
    <p>{if $clientsdetails.city}{$clientsdetails.city}, {/if}{if $clientsdetails.state}{$clientsdetails.state}, {/if}{$clientsdetails.postcode}</p>
    <p>{$clientsdetails.countryname}</p>
    <p><a href="mailto:{$clientsdetails.email}">{$clientsdetails.email}</a></p>
                        </div>
                    
                    </div>
                </div>
                <!-- /.col-lg-4 -->

<div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Resumo
                        </div>
                        <div class="panel-body">
<p>{$LANG.statsnumproducts}: <a href="clientarea.php?action=products"><strong>{$clientsstats.productsnumactive}</strong> ({$clientsstats.productsnumtotal}) - {$LANG.view} &raquo;</a></p>
    <p>{$LANG.statsnumdomains}: <a href="clientarea.php?action=domains"><strong>{$clientsstats.numactivedomains}</strong> ({$clientsstats.numdomains}) - {$LANG.view} &raquo;</a></p>
    <p>{$LANG.statsnumtickets}: <a href="supporttickets.php"><strong>{$clientsstats.numtickets}</strong> - {$LANG.view} &raquo;</a></p>
    <p>{$LANG.statsnumreferredsignups}: <a href="affiliates.php"><strong>{$clientsstats.numaffiliatesignups}</strong> - {$LANG.view} &raquo;</a></p>
    <p>{$LANG.creditcardyourinfo}: <strong>{if $defaultpaymentmethod}{$defaultpaymentmethod}{else}{$LANG.paymentmethoddefault}{/if}</strong> {if $clientsdetails.cctype}({$clientsdetails.cctype}-{$clientsdetails.cclastfour}) - <a href="clientarea.php?action=creditcard">Update &raquo;</a></p>{/if}
                        </div>
                        
                    </div>
                </div>
                <!-- /.col-lg-4 -->

<br />
{/if}

{if $files}


<h3>{$LANG.clientareafiles}</h3>

<div class="row">
{foreach from=$files item=file}
  <div class="col-md-4">
    <img src="images/file.png" /> <a href="dl.php?type=f&id={$file.id}" class="fontsize2"><strong>{$file.title}</strong></a><br />
    {$LANG.clientareafilesdate}: {$file.date}
  </div>
{/foreach}
</div>

{/if}