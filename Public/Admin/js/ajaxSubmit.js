$('.loginform input').keydown(function(e) {
    if(e.keyCode == 13){
        $('#well-submit-btn').click();
    }
});
$('#well-submit-btn').click(function() {
    layui.use('layer', function(){ var layer = layui.layer;});
    var username = $('#username').val();
    var password = $('#password').val();
    var url = think+'/Admin/index.html';
    $.ajax({
        type:'POST',
        url:think+'/Index/doLogin.html',
        data:{
            username:username,
            password:password
        },
        success:function (data) {
            switch (data) {
                case 1:
                    layer.msg('Enter System'+'<i class="layui-icon">&#xe610;</i>');
                    setTimeout('window.location.href = "'+url+'"',1000);
                    break;
                case 2:
                    layer.msg('Username or Password is wrong');
                    break;
                case 3:
                    layer.msg('Username or Password is null');
                    break;
                default:
                    layer.msg('Undefined error');
                    break;
            }
        }
    });
});

$('#submitArticle').click(function() {
    layui.use('layer', function(){var layer = layui.layer;});
    var title   = $('#title').val();
    var type    = $('#type').val();
    var content = $('#content').val();
    var url     = think+'/Article/articleList.html'
    $.ajax({
        type:'POST',
        url:think+'/Article/up.html',
        data:{
            title:title,
            type:type,
            content:content,
        },
        success:function (data) {
            switch (data) {
                case 1:
                    layer.msg('Submit success');
                    setTimeout('window.location.href = "'+url+'"',1000);
                    break;
                case 2:
                    layer.msg('Submit error , try again later,Please');
                    break;
                case 3:
                    layer.msg('Some input is null');
                    break;
                default:
                    layer.msg('Undefined error');
                    break;
            }
        }
    });
});

$('#modifyArticle').click(function() {
    var id      = $('#cid').val();
    var title   = $('#title').val();
    var type    = $('#type').val();
    var content = $('#content').val();
    var url     = think+'/Article/articleList.html';
    $.ajax({
        type:'POST',
        url:think+'/Article/modify.html',
        data:{
            id:id,
            title:title,
            type:type,
            content:content,
        },
        success:function (data) {
            switch (data) {
                case 1:
                    layer.msg('Modify success');
                    setTimeout('window.location.href = "'+url+'"',1000);
                    break;
                case 2:
                    layer.msg('Modify error , try again later,Please');
                    break;
                default:
                    layer.msg('Undefined error');
                    break;
            }
        }
    });
});

$('.mod').click(function() {
    var id = $(this).attr('cid');
    var url = think+'/Article/read/id/'+id;
    window.location.href = url;
});
$('.del').click(function() {
    var id = $(this).attr('cid');
    var url = think+'/Article/articleList.html';
    $.ajax({
        type:'GET',
        url:think+'/Article/del.html',
        data:{
            id:id
        },
        success:function (data) {
            switch (data) {
                case 1:
                    layer.msg('Delete success');
                    setTimeout('window.location.href = "'+url+'"',1000);
                    break;
                case 2:
                    layer.msg('Delete error,try again later,Please');
                    break;
                default:
                    layer.msg('Undefined error');
                    break;
            }
        }
    });
});
