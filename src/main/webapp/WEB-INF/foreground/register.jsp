<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../scripts/My97DatePicker/WdatePicker.js"></script>
<title>无标题文档</title>
    <style>
    /*当鼠标放到文本框时，提示文本的样式*/
    .import_prompt{
	border:solid 1px #ffcd00;
	background-color:#ffffda;
	padding-left:5px;
	padding-right:5px;
   width:200px;float:right; 
	line-height:20px;
	}
    /*当文本框内容不符合要求时，提示文本的样式*/
    .error_prompt{
	border:solid 1px #ff3300;
	background-color:#fff2e5;
	background-image:url("../img/li_err.gif");
	background-repeat:no-repeat;
	background-position:5px 2px;
	padding:2px 5px 0px 25px;
	line-height:20px;
    width:200px;float:right; 
	}
    /*当文本框内容输入正确时，提示文本的样式*/
    .ok_prompt{
	border:solid 1px #01be00;
	background-color:#e6fee4;
	background-image:url("../img/li_ok.gif");
	background-repeat:no-repeat;
	background-position:5px 2px;
	padding:2px 5px 0px 25px;
	line-height:20px;
   width:200px;float:right; 
	}
      * {
            margin:0px;
            padding:0px;
        }
        .zong {
            margin:auto;
            width:980px;
            height:700px; 	
        }
        .zhu {
            margin:auto;
            padding-left:200px;
            cursor:pointer;
            padding-left:100px;
        }
        .zhu1 {
            border:0px; padding:0px; margin:auto; background-color:#e73333; width:280px; height:30px;
             font-size:24px;
             
        }
        .zhu1:hover{
           cursor:pointer;
           background-color:#a11212;
        }
        .login{

            padding-bottom:300px;
        }
        .btn {
            border:0px; padding:0px;
              font-size:24px;
              text-align:center;
        }
        .btn:hover {
           background-color:#784b10;
           
        }
		.form-control{
			float:left;
			}
		.text{
			float:left;
			}
    </style>
    <script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type ="text/javascript">
       var cityList = new Array();//数组中的每一项都是一个单独的数组
        cityList['北京市'] = ['朝阳区', '东城区', '西城区', '海淀区', '宣武区', '丰台区', '怀柔', '延庆', '房山'];
        cityList['上海市'] = ['宝山区', '长宁区', '丰贤区', '虹口区', '黄浦区', '青浦区', '南汇区', '徐汇区', '卢湾区'];
        cityList['广东省'] = ['广州市', '惠州市', '汕头市', '珠海市', '佛山市', '中山市', '东莞市'];
        cityList['深圳市'] = ['福田区', '罗湖区', '盐田区', '宝安区', '龙岗区', '南山区', '深圳周边'];
        cityList['重庆市'] = ['俞中区', '南岸区', '江北区', '沙坪坝区', '九龙坡区', '渝北区', '大渡口区', '北碚区'];
        cityList['天津市'] = ['和平区', '河西区', '南开区', '河北区', '河东区', '红桥区', '塘古区', '开发区'];
        cityList['江苏省'] = ['南京市', '苏州市', '无锡市'];
        cityList['浙江省'] = ['杭州市', '宁波市', '温州市'];
        cityList['四川省'] = ['成都市', '成都市'];
        cityList['海南省'] = ['海口市', '三亚市'];
        cityList['福建省'] = ['福州市', '厦门市', '泉州市', '漳州市'];
        cityList['山东省'] = ['济南市', '青岛市', '烟台市'];
        cityList['江西省'] = ['南昌市', '南昌市'];
        cityList['广西省'] = ['柳州市', '南宁市'];
        cityList['安徽省'] = ['合肥市', '合肥市'];
        cityList['河北省'] = ['邯郸市', '石家庄市'];
        cityList['河南省'] = ['郑州市', '洛阳市'];
        cityList['湖北省'] = ['武汉市', '宜昌市'];
        cityList['湖南省'] = ['长沙市', '益阳市'];
        cityList['陕西省'] = ['西安市', '西安市'];
        cityList['山西省'] = ['太原市', '太原市'];
        cityList['黑龙江省'] = ['哈尔滨市', '哈尔滨市'];
        cityList['其他'] = ['其他'];

        //验证账户
        function checkUser() {
            var user = $("#user").val();
            var userH = $("#userH");
            var reg = /^([\u4e00-\u9fa5]|\w|[@!#$%&*])+$/;
            if (user == "") {
                userH.html("帐户名不能为空").removeClass().addClass("error_prompt");
                return false;
            }
            if (reg.test(user) == false) {
                userH.html("帐户名不合法").removeClass().addClass("error_prompt");
                return false;
            }
            for (var i = 0; i < user.length; i++) {
                var j = user.substring(i, i + 1);
                if (isNaN(j) == false) {
                    userH.html("名字中不能包含数字").addClass("error_prompt");
                    return false;
                }
                userH.html("可以使用").addClass("ok_prompt");
                return true;

            }
		}
        function checkName() {
            var name = $("#name").val();
            var nameH = $("#nameH");
            var reg = /^[\u4e00-\u9fa5]{1,10}$/;
            if (name == "") {
                nameH.html("真实名不能为空").removeClass().addClass("error_prompt");
                return false;
            }
            if (reg.test(name) == false) {
                nameH.html("真实名不合法").removeClass().addClass("error_prompt");
                return false;
            }
            nameH.html("可以使用").removeClass().addClass("ok_prompt");
            return true;
        };
        function checkPwd() {
            var pwd = $("#pwd").val();
            var pwdH = $("#pwdH");
            var reg = /^\d{6,16}$/;
            if (pwd == "") {
                pwdH.html("密码不能为空").removeClass().addClass("error_prompt");
                return false;
            }
            if (reg.test(pwd) == false) {
                pwdH.html("密码不合法").removeClass().addClass("error_prompt");
                return false;
            }
            pwdH.html("可以使用").removeClass().addClass("ok_prompt");
            return true;
        };
        function checkErPwd() {
            var erpwd = $("#erpwd").val();
            var pwd = $("#pwd").val();
            var erpwdH = $("#erpwdH");
            var reg = /^\d{6,16}$/;
            if (erpwd == "") {
                erpwdH.html("确认密码不能为空").removeClass().addClass("error_prompt");
                return false;
            }
            if (reg.test(erpwd) == false) {
                erpwdH.html("密码不合法").removeClass().addClass("error_prompt");
                return false;
            }
            if (pwd != erpwd) {
                erpwdH.html("两次密码不一致");
                return false;
            }
            erpwdH.html("可以使用").removeClass().addClass("ok_prompt");
            return true;
        }; 
        function checkEmail() {
            var email = $("#email").val();
            var emailH = $("#emailH");
            var reg = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
            if (email == "") {
                emailH.html("邮箱不能为空").removeClass().addClass("error_prompt");
                return false;
            }
            if (reg.test(email) == false) {
                emailH.html("邮箱不合法").removeClass().addClass("error_prompt");
                return false;
            }
            emailH.html("可以使用").removeClass().addClass("ok_prompt");
            return true;
        };
        function checkMobile() {
            var mobile = $("#mobile").val();
            var mobileH = $("#mobileH");
            var reg = /^(13|15|18)\d{9}$/;
            if (mobile == "") {
                mobileH.html("手机不能为空").removeClass().addClass("error_prompt");
                return false;
            }
            if (reg.test(mobile) == false) {
                mobileH.html("手机不合法").removeClass().addClass("error_prompt");
                return false;
            }
            mobileH.html("可以使用").removeClass().addClass("ok_prompt");
            return true;
        };
        function checkAddress() {
            var address = $("#address").val();
            var city = $("#city");
            var add = $("#add").val();
            var addH = $("#addH");
            if (address == "请选择省/城市") {
                addH.html("请填写完地址信息").removeClass().addClass("error_prompt");
                return false;
            }
            if (city == "请选择城市/地区") {
                addH.html("请填写完地址信息").removeClass().addClass("error_prompt");
                return false;
            }
            if (add == "") {
                addH.html("请填详细地址").removeClass().addClass("error_prompt");
                return false;
            }
            addH.html("可以使用").removeClass().addClass("ok_prompt");
            return true;
        };
        /* 追加省份 */
        $(function () {
          $("#address").append(function () {
                var html = "";
                for (var i in cityList) {
					/* 省份 */
                	html += "<option value=" + i + ">" + i + "</option>";
                }
                return $(html);
            })
            $("#address").change(function () {
                var value = $(this).val();//得到省份的值
                var html = "";
                if (value == "请选择省/城市") {
                    html = "<option>请选择城市/地区</option>";
                    $("#city").html(html);
                    return;
                }
                /* 所有省份下的市 */
                var citys = cityList[value];
                /* i：下标  n：值  */
                $.each(citys, function (i, n) {
                    html += "<option value="+n+">"+n+"</option>";
                })
                $("#city").html(html);               
            });

          
            $("#user").blur(function () {
                return checkUser();
            })
        
            $("#name").blur(function () {
                return checkName();
            })
          
            $("#pwd").blur(function () {
                return checkPwd();
            })
          
            $("#erpwd").blur(function () {
                return checkErPwd();
            })
           
            $("#email").blur(function () {
                return checkEmail();
            })
          
            $("#mobile").blur(function () {
                return checkMobile();
            })
         
            $("#add").blur(function () {
                return checkAddress();
            })
            $("#form1").submit(function () {
                var flag = true;
                if (checkUser() == false) {
                    flag = false;
                }
                if (checkName() == false) {
                    flag = false;
                }
                if (checkPwd() == false) {
                    flag = false;
                }
                if (checkErPwd() == false) {
                    flag = false;
                }
                if (checkEmail() == false) {
                    flag = false;
                }
                if (checkMobile() == false) {
                    flag = false;
                }
                if (checkAddress() == false) {
                    flag = false;
                }
                return flag;
            })
		});
    </script>
</head>

<body>
<div class ="zong">
<div style="width:800px; height:583px; margin:auto;">
<form id ="form1" action="${pageContext.request.contextPath}/user/register" method="post">
<table width="800" height="583" border="0">
  <tr>
    <td width="160"><img src="../img/vnasi.com.logo.png"/></td>
    <td colspan="2"><h1>欢迎新用户注册</h1></td>
  </tr>
  <tr  >
    <td align="right">账户名：</td>
    <td width="500" height="41" ><input id ="user" class="form-control" type="text" name="userId"  placeholder="有效账户名" style ="width:250px; height:30px; "/><div id ="userH"></div></td>
    <td width="245" rowspan="12" colspan="2"> <div class="login">
              <p>已有维纳斯鲜花礼品网帐号</p>
              <a href="${pageContext.request.contextPath}/path/toLogin" class="btn">登录</a>
            </div>
</td>
  </tr>
  <tr>
    <td align="right">真实姓名：</td>
    <td><input id ="name" class="text" type="text" name="userName" style ="width:250px; height:30px;"placeholder="有效姓名"/><div id ="nameH"></div></td>
 	
  </tr>
  <tr>
    <td align="right">设置密码：</td>
    <td> <input id ="pwd" class="form-control" type="password" name="password" data-rule="密码:required;password;" style ="width:250px; height:30px;" placeholder="有效密码"/><div id ="pwdH"></div></td>
  </tr>
  <tr>
    <td align="right">确认密码：</td>
    <td><input id ="erpwd" class="form-control" type="password" name="repassword" data-rule="确认密码:required;match(password);" style ="width:250px; height:30px;"placeholder="有效确认密码" /><div id ="erpwdH"></div></td>
  </tr>
  <tr>
    <td align="right">性别：</td>
    <td><input class="radio" type="radio" name="sex" value="M" checked="checked"/>男性
		<input class="radio" type="radio" name="sex" value="F"/>女性
</td>
  </tr>
  <tr>
    <td align="right">出生日期：</td>
    <td><input id="birthday" class="text" type="text" onclick="WdatePicker()" name="birthday" style ="width:250px; height:30px;" placeholder="有效生日" /><div id ="birthdayH"></div></td>
  </tr>
  <tr>
    <td align="right">身份证：</td>
    <td><input class="text" type="text" name="identityCode" style ="width:250px; height:30px;" placeholder="有效身份证号"/></td>
  </tr>
  <tr>
    <td align="right">电子邮件：</td>
    <td><input id ="email" class="text" type="text" name="email" style ="width:250px; height:30px;" placeholder="有效电子邮件"/><div id ="emailH"></div></td>
  </tr>
  <tr>
    <td align="right">手机：</td>
    <td><input id ="mobile" class="text" type="text" name="mobile" style ="width:250px; height:30px;"placeholder="有效手机号码" /><div id ="mobileH"></div></td>
  </tr>
  <tr height="80">
    <td align="right">收货地址：</td>
    <td><select id="address" name="chengshi" style ="width:252px; height:30px;"><option>请选择省/城市</option></select><div id ="addH"></div>
         <select id="city"  name="diqu" style ="width:252px; height:30px;"><option>请选择区/县</option></select><br/>
        <input id ="add"  type ="text" name ="shou" style ="width:250px; height:30px;" value ="" placeholder="有效地址" />
    </td>
  </tr>
  <tr>
    <td colspan="2"><input type="checkbox" checked="checked" id="readme"/> 我已阅读并同意<a href="#" class="blue">《维纳斯鲜花礼品网用户注册协议》</a></td>
  </tr>
  <tr>
    <td colspan="2" ><label class="zhu"/><input class ="zhu1" type="submit" name="submit" value="提交注册" /></td>
  </tr>
</table>
    </form>
    </div>
    </div>
</body>
</html>
