<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
#manageSubject table  td{
	font-size:12px;
}
-->
</style>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">管理学生</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="53%" valign="top">&nbsp;</td>
        </tr>
      <tr>
        <td valign="middle"><span class="left_txt">
			<div id="manageSubject" align="center"><!--管理试题-->
			<table width="95%" cellspacing="10">
			  <tr align="center">
				<td>学生编号</td>
				<td>所属班级</td>
				<td>学生姓名</td>
				<td>成绩</td>
				<td>查看</td>
				<td>更新</td>
				<td>删除</td>
			  </tr>
			  <s:iterator value="#request.students" var="student">
			  <tr align="center">
				<td>${student.studentID}</td>
				<td>${student.sclass}</td>
				<td>${student.studentName}</td>
				<td>${student.result}</td>
				<td><a href="studentParticular.action?studentID=${student.studentID}">查看</a></td>
							<td><a href="studentUpdateBefore.action?studentID=${student.studentID}">更新</a></td>
							<td><a href="studentDelete.action?studentID=${student.studentID}">删除</a></td>
					 
			  </tr>
			  </s:iterator>
			  
			  <tr>
				  	<td colspan="6" align="center">
				  		共${page.totalCount}条纪录，当前第${page.currentPage}/${page.totalPage}页，每页${page.everyPage}条纪录
				  	<s:if test="#request.page.hasPrePage">
                		<a href="Managestuaction?currentPage=1">首页</a> | 
                		<a href="Managestuaction?currentPage=${page.currentPage - 1}">上一页</a> | 
               		</s:if>
               		<s:else>
               		首页 | 上一页 | 
               		</s:else>
               		<s:if test="#request.page.hasNextPage">
                		<a href="Managestu.action?currentPage=${page.currentPage + 1}">下一页</a> | 
                		<a href="Managestu.action?currentPage=${page.totalPage}">尾页</a>
               		</s:if>
               		<s:else>
               		下一页 | 尾页
               		</s:else>
				  	</td>
				  </tr>	  
			  
			</table>	
			</div>
		</td>
        </tr>
      
    </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
