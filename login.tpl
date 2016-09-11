{include file="$template/pageheader.tpl" title=$LANG.login}

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Central do Cliente</h3>
                    </div>
                    <div class="panel-body">
                    {if $incorrect}
<div class="alert alert-danger">
  {$LANG.loginincorrect}
</div>
{/if}
                        <form method="post" action="{$systemsslurl}dologin.php" class="form-stacked">
  
  <div class="form-group">
    <label for="username">{$LANG.loginemail}:</label>
    <input class="form-control" name="username" id="username" type="text" />
  </div>

  <div class="form-group">
    <label for="password">{$LANG.loginpassword}:</label>
    <input class="form-control" name="password" id="password" type="password"/>
  </div>
  
  <div class="checkbox">
    <label>
      <input type="checkbox" name="rememberme"{if $rememberme} checked="checked"{/if} /> {$LANG.loginrememberme}
    </label><p class="pull-right"><a href="pwreset.php">Recuperar Senha</a></p>
  </div>
  
  <hr />
  
  
  
  <button type="submit" class="btn btn-lg btn-success btn-block">{$LANG.loginbutton}</button>
</form>
                    </div>
                </div>
            </div>
        </div>
    </div>