% rebase('tpls/base.tpl')
<div>
    %if name:
    你好，{{name}}|<a href="/me/{{id}}">个人中心</a>|<a href="/logout">退出</a>
    %end
</div>
    <ul>
        <li><a href="/">返回首页</a></li>
    </ul>
<div>
{{info}}
<form action="" method="POST">
    <p>旧密码：　<input type="password" name="opassword" required="required" /></p>
    <p>新密码：　<input type="password" name="npassword"  required="required" /></p>
    <p>验证密码：<input type="password" name="kpassword" required="required" /></p>
    <input type="submit" value="修改密码" />
</form>
</div>