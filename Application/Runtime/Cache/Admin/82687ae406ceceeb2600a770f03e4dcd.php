<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo ($title); ?></title>
<link rel="shortcut icon" href="/joyo_bms/public/Admin/images/favicon.ico" />
<link rel="stylesheet" href="/joyo_bms/public/Admin/css/layui.css">
<link rel="stylesheet" href="/joyo_bms/public/Admin/css/style.css">
<link rel="stylesheet" href="/joyo_bms/public/Admin/css/editormd.css">
<script src="/joyo_bms/public/Admin/js/jquery.js"></script>
<script src="/joyo_bms/public/Admin/js/layui.js"></script>
<script type="text/javascript">
 var think   = '/joyo_bms/Admin';
 var img     = '/joyo_bms/public/Admin/images';
 var pic     = '__pic__';
</script>
</head>
<body>
<div class="well-nav">
    <ul class="layui-nav" lay-filter="nav">
        <li class="layui-nav-item <?php if(($mark) == "main"): ?>layui-this<?php endif; ?>"><a href="<?php echo U('Admin/index');?>"><i class="layui-icon">&#xe638;</i>&emsp;Main</a></li>
        <li class="layui-nav-item <?php if(($mark) == "list"): ?>layui-this<?php endif; ?>">
            <a href="<?php echo U('Article/articleList');?>"><i class="layui-icon">&#xe63c;</i>&emsp;Article</a>
            <dl class="layui-nav-child">
                <?php if(is_array($typeList)): $i = 0; $__LIST__ = $typeList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('Article/articleList',array('type'=>$vo['id']));?>"><?php echo ($vo["typename"]); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
            </dl>
        </li>
        <li class="layui-nav-item <?php if(($mark) == "add"): ?>layui-this<?php endif; ?>"><a href="<?php echo U('Article/add');?>"><i class="layui-icon">&#xe608;</i>&emsp;Write New</a></li>
        <li class="layui-nav-item"><a href=""><i class="layui-icon">&#xe612;</i>&emsp;About</a></li>
        <li class="layui-nav-item"><a href="<?php echo U('Index/logout');?>"><i class="layui-icon">&#xe64d;</i>&emsp;Logout</a></li>
    </ul>
</div>
<script>
layui.use('element', function(){
    var element = layui.element();
});
</script>

    index

<div class="footer">
    footer
</div>
</body>
</html>