<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<!DOCTYPE html>
<div class="container-fluid">

<div class="row">
<div class="col-sm-8 ">
<img src="https://st.depositphotos.com/2036511/4057/v/600/depositphotos_40575113-stock-illustration-login-button.jpg" alt="logo"
			style="width:50%">
</div>
<div class="col-sm-4">
<form action="perform_login" method="post" style="width:100% , height: 100%">

	<table class="table table-bordered table-condensed" align="center">
	<thead>
		<tr bgcolor="gray">
			<th colspan="2">Sign Up Here</th>
		</tr>
		</thead>
		<tr>
			<td>Login Name</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" /></td>

		</tr>
		<tr bgcolor="orange">
			<td colspan="2">
				<center>
					<input type="submit" value="SUBMIT"  class="btn-info"/>
				</center>
			</td>
		</tr>
	</table>
	</div>
</form>
</div>
</div>
