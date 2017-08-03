<extend name="Public/common" />
<block name="main">
    <div class="well-main layui-form">
        <div class="well-editor" style="">
            <input type="text" id="title" name="title" required  lay-verify="required" placeholder="   请输入标题" autocomplete="off" class="layui-input well-title-input">
            <div id="well-editormd">
                <textarea id="content" style="display:none;"></textarea>
            </div>
            <script src="__js__/editormd.js"></script>
            <script>
                var Editor;
                $(function() {
                    testEditor = editormd({
                        id      : "well-editormd",
                        width   : "100%",
                        height  : 640,
                        path    : "__js__/lib/",
                        saveHTMLToTextarea : true,
                    });
                });
            </script>
        </div>
        <div class="well-ctl">
            <div class="layui-collapse">
              <div class="layui-colla-item">
                <h2 class="layui-colla-title">Type</h2>
                <div class="layui-colla-content layui-show">
                    <select id="type" name="type" lay-verify="required">
                        <option value=""></option>
                        <volist name="typeList" id="vo">
                        <option value="{$vo.id}">{$vo.typename}</option>
                        </volist>
                    </select>
                    <input type="button" class="layui-btn layui-btn-normal" value="Create new type">
                </div>
              </div>
            </div>
            <script>layui.use('form', function(){var form = layui.form();});</script>
            <div class="layui-collapse">
              <div class="layui-colla-item">
                <h2 class="layui-colla-title">Publish</h2>
                <div class="layui-colla-content layui-show">
                    <input id="submitArticle" type="button" class="layui-btn" value="Submit">
                    <input type="button" class="layui-btn layui-btn-normal" value="Save">
                </div>
              </div>
            </div>
        </div>
        <script src="__js__/ajaxSubmit.js"></script>
    </div>
</block>