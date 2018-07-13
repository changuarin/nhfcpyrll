<style type="text/css">
	.container {
		margin-top: 180px;
		margin-left: 350px;
	}
	input {
		text-align: center;
	}
</style>
<div class="container">
	 <div class="col-sm-7">
		  <div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3 class="panel-title">Time Keeping Form</h3>
		    </div>
		    <div class="panel-body">
		    	<center>
		    		<form method="POST" action="<?php echo base_url(); ?>index.php/reports/employee_timekeeping">
		    			<div class="col-md-4">
			          <div class="form-group">
			              <label for="form_name">Employee No</label>
			              <input id="form_name" type="text" name="employee_no" class="form-control" >
			          </div>
		        	</div>
		        	<div class="col-md-4">
			          <div class="form-group">
			              <label for="form_name">Start Date</label>
			              <input id="form_name" type="text" name="start_date" class="form-control" placeholder="YYYY-MM-DD">
			          </div>
		        	</div>
		        	<div class="col-md-4">
			          <div class="form-group">
			              <label for="form_name">End Date</label>
			              <input id="form_name" type="text" name="end_date" class="form-control" placeholder="YYYY-MM-DD">
			          </div>
		        	</div>
		        	<button type="submit" class="btn btn-primary">Submit</button>
		    		</form>
		    	</center>
		    </div>
		  </div>
	  </div>
</div>

