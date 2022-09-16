<!-- Main Content -->
<div class="page-wrapper pa-0 ma-0 auth-page">
<div class="container-fluid">
<!-- Row -->
<div class="table-struct full-width full-height">
<div class="table-cell vertical-align-middle auth-form-wrap">
<div class="auth-form  ml-auto mr-auto no-float">
<div class="row">
<div class="col-sm-12 col-xs-12">
<div class="mb-30">
<h3 class="text-center txt-dark mb-10">Need help with your password?</h3>
<h6 class="text-center txt-grey nonecase-font">Enter your registered email  to reset your password.</h6>
</div>	
<div class="form-wrap">
<form method="post" action="<?php echo base_url();?>student/reset_password">
<div class="form-group">
<label class="control-label mb-10" for="exampleInputEmail_2">Type</label>
<select class="form-control" required="" id="" name="type">
<option value="student">STUDENT</option>
<option value="student">PARENT</option>
</select>
</div>
<div class="form-group">
<label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
<input type="email" class="form-control" id="exampleInputEmail_2" placeholder="Enter email">
</div>
<div class="form-group text-center">
<input type="submit" type="submit" class="btn btn-info btn-rounded" value="Reset"/>
</div>
</form>
</div>
</div>	
</div>
</div>
</div>
</div>
<!-- /Row -->	
</div>
</div>
<!-- /Main Content -->