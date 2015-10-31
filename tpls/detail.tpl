% rebase('tpls/base.tpl')
<div>
    %if name:
    你好，{{name}}|<a href="/me/{{id}}">个人中心</a>|<a href="/logout">退出</a>
    %else:
    <form action="" method="POST">
    姓名：<input type="text" name="name"  />
    密码：<input type="password" name="password" />
    验证：<input type="text" name="verify_text" />
    <img src="/verify" />
    <input type="submit" value="登录" />
    </form>
    <a href="/signup">注册</a>
    %end
</div>

    % include('tpls/mnav.tpl',navs=navs)
    % if news:
        <div>
        <p>{{news.title}}</p>
        <p>{{news.author}} {{news.release_date}}</p>
        {{news.txt}}
        </div>
    %end
