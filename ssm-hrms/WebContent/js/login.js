$(function() {
	$('#switch_qlogin').click(
		function() {
			$('#switch_login').removeClass("switch_btn_focus").addClass(
					'switch_btn');
			$('#switch_qlogin').removeClass("switch_btn").addClass(
					'switch_btn_focus');
			$('#switch_bottom').animate({
				left : '0px',
				width : '70px'
			});
			$('#qlogin').css('display', 'none');
			$('#web_qr_login').css('display', 'block');
		});
	$('#switch_login').click(
		function() {
			$('#switch_login').removeClass("switch_btn").addClass(
					'switch_btn_focus');
			$('#switch_qlogin').removeClass("switch_btn_focus").addClass(
					'switch_btn');
			$('#switch_bottom').animate({
				left : '154px',
				width : '70px'
			});
			$('#qlogin').css('display', 'block');
			$('#web_qr_login').css('display', 'none');
		});
	if (getParam("a") == '0') {
		$('#switch_login').trigger('click');
	}
	
	
	var a=null;
	
	$('#user').blur(unameValid);
	
	function unameValid() {
		var uname=$("#user").val();
		if(uname==""){
			$("#userCue").html("<font color='red'><b>X用户名不能为空</b></font>");
		};
		var url="checkRegis?username="+uname;
		$.ajax({
			type:"GET",
			url:url,
			dataType:"text",
			timeout:3000,
			success:function(msg){
				if (msg == "success"&&uname!="") {
					$("#userCue").html("<font color='green'><b>√用户名可以使用</b></font>");
                }
                if (msg == "fail") {
                	a=true;
                	$("#userCue").html("<font color='red'><b>X用户名已存在</b></font>");
                }
			},
			error:function(){
				
			}
		});	
	}
	
	
	
	
	
	$('#reg').click(function() {
		
		if ($('#user').val() == "") {
			$('#user').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×用户名不能为空</b></font>");
			return false;
		}
		if ($('#user').val().length < 4 || $('#user').val().length > 16) {
			$('#user').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×用户名位4-16字符</b></font>");
			return false;
		}
		if ($('#passwd').val().length < 6) {
			$('#passwd').focus();
			$('#userCue').html("<font color='red'><b>×密码不能小于" + 6 + "位</b></font>");
			return false;
		}
		if ($('#passwd2').val() != $('#passwd').val()) {
			$('#passwd2').focus();
			$('#userCue').html("<font color='red'><b>×两次密码不一致！</b></font>");
			return false;
		}
		if(a==true){
			a=null;
			return false;
		}
		
	});
	
	
});
function logintab(){
	scrollTo(0);
	$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#qlogin').css('display','none');
	$('#web_qr_login').css('display','block');
}
//根据参数名获得该参数 pname等于想要的参数名 
function getParam(pname) { 
    var params = location.search.substr(1); // 获取参数 平且去掉？ 
    var ArrParam = params.split('&'); 
    if (ArrParam.length == 1) { 
        //只有一个参数的情况 
        return params.split('=')[1]; 
    } 
    else { 
         //多个参数参数的情况 
        for (var i = 0; i < ArrParam.length; i++) { 
            if (ArrParam[i].split('=')[0] == pname) { 
                return ArrParam[i].split('=')[1]; 
            } 
        } 
    } 
}  

	