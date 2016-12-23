<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>登录失败</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<style>
body {
	text-align: center
}
</style>
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="CSS/loginbutton.css" />
<style type="css/text">
    /*如果支持CSS3的话,不支持的话就用js计算left和top的值*/
    .vcenter {position:absolute;left:50%;top:50%;translateX(-50%);translateY(-50%)}
    </style>
<body>


	<table width="1024" border="0" align="center" cellpadding="0"
		cellspacing="0" bgcolor="#FFFFFF" class="tableBorder">
		<tr>
			<td>
				<table width="760" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="22" valign="top">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td valign="top"><table width="100%" height="525" border="0"
							align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td height="800" align="center" valign="top"><table
										width="100%" height="271" border="0" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="271" align="right" valign="top"
												class="word_white"><table width="100%" height="768"
													border="0" cellpadding="0" cellspacing="0"
													background="Images/login.jpg">
													<tr>
														<td height="57">&nbsp;</td>
													</tr>
													<tr>
														<td height="179" valign="top"><table width="100%"
																height="63" border="0" cellpadding="0" cellspacing="0">
																<tr>
																	<td width="2%">&nbsp;</td>
																	<td width="97%" align="center" valign="top">
																		<form name="form1" method="post"
																			action="manager.do?action=login">
																			<table width="100%" border="0" cellpadding="0"
																				cellspacing="0" bordercolorlight="#FFFFFF"
																				bordercolordark="#FFFFFF">
																				<tr>
																					<td height="57">&nbsp;</td>
																					<td height="57" colspan="2" align="center">&nbsp;</td>
																					<td>&nbsp;</td>
																				</tr>
																				<tr>
																					<td width="50%" height="37">&nbsp;</td>
																					<td width="10%"><font color="#FFFFFF">&nbsp;&nbsp;登录失败！</font></td>
																					<td width="31%"></td>
																					<td width="9%">&nbsp;</td>
																				</tr>
																				<tr>
																					<td height="37">&nbsp;</td>
																					<td><input type="button" class="loginbutton"
																						value="返回"
																						onClick="window.location.href='login.jsp'"></td>

																					<td>&nbsp;</td>
																				</tr>
																				<tr>
																					<td height="30">&nbsp;</td>


																					<td>&nbsp;</td>
																				</tr>
																			</table>
																		</form>
																	</td>
																	<td width="1%">&nbsp;</td>
																</tr>
															</table></td>
													</tr>
													<tr>
														<td height="19">&nbsp;</td>
													</tr>
												</table></td>
										</tr>
									</table>
</body>
</html>