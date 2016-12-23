<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.core.ChStr"%>
<%
	ChStr chStr = new ChStr();
	String manager = (String) session.getAttribute("manager");
	//验证用户是否登录
	if (manager == null || "".equals(manager)) {
		response.sendRedirect("login.jsp");
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<table width="1011" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td height="133" valign="top" cellpadding="0" cellspacing="0"
			background="Images/headbg.jpg"><table width="100%" height="33"
				border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="78%" height="10" style="width: 693px; "></td>
					<td colspan="2" style="width: 227px; "></td>
				</tr>
				<tr>
					<td height="20">&nbsp;</td>
					<td width="10%"><a href="#"
						onClick="window.location.reload();" class="word_dark">刷新页面</a></td>
					<td width="10%"><a href="#" onClick="myclose()"
						class="word_dark">关闭系统</a></td>
					<script language="javascript">
						function myclose() {
							if (confirm("真的要关闭当前窗口吗?")) {
								window.close();
							}
						}
					</script>
				</tr>
			</table>
			<table width="93%" height="79" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="69" align="right" valign="bottom"><fornt ccolor="#0000FF">当前登录用户：</fornt><fornt ccolor="#0000FF"><%=manager%></fornt></td>
				</tr>
			</table></td>
	</tr>
</table>

