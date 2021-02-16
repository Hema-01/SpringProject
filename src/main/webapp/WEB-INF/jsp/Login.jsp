<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<!DOCTYPE html>
<div class="container-fluid">

<style>
body {
  background-image: url("https://prmceam.ac.in/wp-content/uploads/2015/03/background-learner.jpg");
  background-position: 50% 50%;
  background-repeat: repeat;

}
</style>


<div class="row justify-content-center">

<form action="perform_login" method="post">

	<table class="table table-bordered table-condensed" >
	<thead>
		<tr bgcolor="gray">
			<th colspan="2" ><center><i>Sign Up Here</i></center></th>
		</tr>
		</thead>
		<tr>
			<td>Login Name</td>
			<td><input type="text" name="username"  class="form-control"/></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" class="form-control" /></td>

		</tr>
		<tr bgcolor="">
			<td colspan="2">
				<center>
					<input type="submit" value="SUBMIT"  class="btn-info"/>
				</center>
			</td>
		</tr>
	</table>
</form>
</div>
</div>
