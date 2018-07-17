<style type="text/css">
	.container {
		margin-top: 100px;
		margin-left: 250px;
	}
	h3,h5 {
		color: green;
	}
	.row {
		margin-left: 50px;
	}
</style>
<div class="container">

	<div class="col-sm-8">
	  <div class="panel panel-primary">
	    <div class="panel-heading">
	        <h3 class="panel-title">SL/VL FORM</h3>
        	
	    </div>
	    <div class="panel-body">
	    	<?php if($this->session->flashdata('add_msg')) : ?>
			     <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
				<?php endif; ?>
	    	<center><h3>NEW HORIZON FINANCE CORP</h3></center>
	    	<center><h5>REQUEST FOR LEAVE OR ABSENT</h5></center>
	    	<br><br><br>
	    	<form method="POST" action="<?php echo base_url(); ?>index.php/reports/add_slvl">
	    		<div style="color:red"><?php echo validation_errors(); ?> </div>
	    		<div class="row">
		    		<div class="col-md-5">
		          <div class="form-group">
		              <label for="form_name">TYPE</label>
		              <select class="form-control" name="slvl_type">
		              	<option value=" ">SELECT</option>
		              	<option value="VL">VACATION LEAVE</option>
		              	<option value="SL">SICK LEAVE</option>
		              	<option value="ML">MALTERNITY LEAVE</option>
		              	<option value="EL">EMERGENCY LEAVE</option>
		              </select>	
		          </div>
			    	</div>
			    	<div class="col-md-5">
	            <div class="form-group">
	                <label for="form_name">EMPLOYEE NUMBER </label>
	                <input id="form_name" type="text" name="employee_number" class="form-control">
	            </div>
			   		</div>
			   	</div>	
			   	<div class="row">
			   		<div class="col-md-10">
	            <div class="form-group">
	                <label for="form_name">EMPLOYEE NAME </label>
	                <input id="form_name" type="text" name="name" class="form-control">
	            </div>
			   		</div>
			   	</div>	
			    		
		    	<div class="row">
	          <div class="col-md-5">
	            <div class="form-group">
	                <label for="form_name">EFFECTIVE DATE OF LEAVE</label>
	                <input id="form_name" type="text" name="start_date" class="form-control" placeholder="START YYYY-MM-DD">
	            </div>
	          </div>
	          <div class="col-md-5">
	            <div class="form-group">
	                <label for="form_name">&nbsp; </label>
	                <input id="form_name" type="text" name="end_date" class="form-control" placeholder="END YYYY-MM-DD">
	            </div>
	          </div>
	        </div> 
	        <div class="row">
	          <div class="col-md-10">
	            <div class="form-group">
	                <label for="form_name">REASON</label>
	                <input id="form_name" type="text" name="reason" class="form-control">
	            </div>
	          </div>
	        </div> 
         	<div class="row">
	          <div class="col-md-10">
	              <center><input type="submit" class="btn btn-primary btn-send" value="Submit"></center>
	          </div>
		      </div>
	    	</form>
	    </div>  
	  </div>
	</div>
</div>
