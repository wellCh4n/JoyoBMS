<extend name="Public/common" />
<block name="main">
    <div class="well-main">
        <div class="well-left">
            <div class="well-overview">
                <fieldset class="layui-elem-field">
                    <legend>Overview</legend>
                    <div class="layui-field-box">
                        <div class="layui-btn-group">
                            <a class="layui-btn" href="#">共有{$articleNum}篇文章</a>
                            <a class="layui-btn" href="#">共有{$typeNum}个分类</a><br>
                            <a class="layui-btn layui-btn-normal" href="{:U('Article/add')}">发布新的文章</a>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="well-weather">
                <fieldset class="layui-elem-field">
                    <legend>Weather</legend>
                    <div class="layui-field-box">
                        <div class="layui-btn-group">
                            <div id="tp-weather-widget"></div>
                            <script>(function(T,h,i,n,k,P,a,g,e){g=function(){P=h.createElement(i);a=h.getElementsByTagName(i)[0];P.src=k;P.charset="utf-8";P.async=1;a.parentNode.insertBefore(P,a)};T["ThinkPageWeatherWidgetObject"]=n;T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});T[n].l=+new Date();if(T.attachEvent){T.attachEvent("onload",g)}else{T.addEventListener("load",g,false)}}(window,document,"script","tpwidget","//widget.seniverse.com/widget/chameleon.js"))</script>
                            <script>
                                tpwidget("init", {
                                    "flavor": "slim",
                                    "location": "WT47HJP3HEMP",
                                    "geolocation": "enabled",
                                    "language": "zh-chs",
                                    "unit": "c",
                                    "theme": "white",
                                    "container": "tp-weather-widget",
                                    "bubble": "enabled",
                                    "alarmType": "badge",
                                    "uid": "U152EBCAB8",
                                    "hash": "ce3ed38003334563ff9598078678d840"
                                });
                                tpwidget("show");
                            </script>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="well-sys">
                <h1>系统信息</h1>
                <table class="layui-table">
                    <tbody>
                        <tr>
                            <td>PHP 版本</td>
                            <td>{:PHP_VERSION}</td>
                        </tr>
                        <tr>
                            <td>ThinkPHP 版本</td>
                            <td>{$Think.version}</td>
                        </tr>
                        <tr>
                            <td width="50%">JoyoBMS 版本</td>
                            <td width="50%">1.0</td>
                        </tr>
                        <tr>
                            <td>系统 版本</td>
                            <td>{:php_uname('s')} {:php_uname('r')}</td>
                        </tr>
                        <tr>
                            <td>浏览器信息</td>
                            <td>{:getenv('HTTP_USER_AGENT')}</td>
                        </tr>
                        <tr>
                            <td>客户端 IP</td>
                            <td>{:get_client_ip()}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="well-right">
            <table id="rtable" class="layui-table">
                <thead>
                    <tr>
                        <th colspan="3" style="text-align: center;">最近发布的十篇</th>
                    </tr>
                    <tr>
                        <th width="150">标题</th>
                        <th>简介</th>
                        <th width="180">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <volist name="artcileList" id="vo" offset="0" length="10">
                    <tr>
                        <th>{$vo.title}</th>
                        <th>{$vo.intro}</th>
                        <th><input cid="{$vo.id}" class="mod layui-btn layui-btn-normal" type="button" value="Modify"> <input cid="{$vo.id}" class="del layui-btn layui-btn-danger" type="button" value="Delete"></th>
                    </tr>
                    </volist>
                    <script src="__js__/ajaxSubmit.js"></script>
                </tbody>
            </table>
        </div>
    </div>
</block>