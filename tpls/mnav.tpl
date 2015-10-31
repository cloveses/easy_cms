    <div>
    <ul>
        <li style="float:left;margin-left:20px;"><a href="/">首页</a></li>
        %for nav in navs:
        <li style="float:left;margin-left:20px;"><a href="/{{str(nav.id)}}">{{nav.name}}</a></li>
        %end
    </ul>
    <div style="clear:both;"></div>
    </div>