% rebase('tpls/base.tpl')
<p>{{info}}</p>
<form method="post">
    <input type="text" name="name" placeholder="请输入注册的用户名" />
    <input type="password" name="password" placeholder="输入密码" />
    <input type="password" name="vpassword" placeholder="再次输入密码" />
    <input type="text" name="verify_text" /><img src="/verify" />
    <input type="submit" value="提交" />
</form>