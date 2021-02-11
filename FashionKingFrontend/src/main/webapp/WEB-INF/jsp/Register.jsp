<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>

<style>
body {
  background-image: url("https://www.australiance.com/wp-content/uploads/2015/09/Resume-cover-letter-in-Australia-australiance.jpg");
  background-position: 50% 50%;
  background-repeat: repeat;

}
</style>
	<div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Register Here..!!</div>
                        <div class="card-body">
                            <form  action="registeruser" method="post">
                            <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="customerName" class="form-control" name="customerName" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="username" class="form-control" name="username" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="password" class="form-control" name="password">
                                    </div>
                                </div>
                          
                                <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Mobile Number</label>
                                    <div class="col-md-6">
                                        <input type="text" id="mobileNo" class="form-control" name="mobileNo">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Email Id</label>
                                    <div class="col-md-6">
                                        <input type="text" id="emailId" class="form-control" name="emailId">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Address </label>
                                    <div class="col-md-6">
                                        <input type="text" id="address" class="form-control" name="address">
                                    </div>
                                </div>
                                <div class="form-group row">
                                
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit"  value="SUBMIT" class="btn btn-primary">
                                        Register
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>