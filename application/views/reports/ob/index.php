<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 100px;
	}
	p{
		font-size: 24px;
		font-family: century gothic;
	}
	.row1{
		margin-top: -45px;
		margin-left: 970px;
	}
</style>
<div class="container">
<?php if($this->session->flashdata('add_msg')) : ?>
   <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('delete_emp')) : ?>
      <b class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('delete_emp'); ?></b>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">

  	<div class="panel panel-default">
    	<div class="panel-heading">
      	<p>OB List</p>
      	<div class="row1">
      		 <input class="btn btn-primary" id="processOb" type="submit" value="Process">
        	 <a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/reports/add_ob">Add</a>
	      </div>	
      </div>	
		    <div class="panel-body">
			    <form id="obForm" method="post">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			          	<div class="row">  	
				          	<div class="col-md-2">
						          <div class="form-group">
						              <label for="form_name">START</label>
						              <input id="form_name" type="text" name="start_date" class="form-control" value="<?php echo $start_date; ?>">
						          </div>
						        </div>
						        <div class="col-md-2">
						          <div class="form-group">
						              <label for="form_name">END</label>
						              <input id="form_name" type="text" name="end_date" class="form-control" value="<?php echo $end_date; ?>">
						          </div>
						        </div>	
						        <br>
						        <button type="submit" class="btn btn-primary">load</button>  
								  </div> 
			            <thead>
			                <tr>
		                    <th>Employee No</th>
		                    <th>Name</th>
		                    <th>Date</th>
		                    <th>From</th>
		                    <th>To</th>
		                    <th>Type</th>
		                    <th>Remarks</th>
		                    <th>Action</th>
			                </tr>
			            </thead>

			            <?php if(isset($obs)) : ?>
			                <?php foreach($obs as $ob) : ?>
			                <tr>
			                	<input type="hidden" name="process_date" value="<?php echo date('Y-m-d'); ?>">
		                    <td>
		                    	<?php echo $ob->employee_number; ?>
		                    	<input type="hidden" name="employee_number[]" value="<?php echo $ob->employee_number; ?>">
		                    </td>
		                    <td><?php echo $ob->name; ?></td>
		                    <td>
		                    	<?php echo $ob->date_ob; ?>
		                    	<input type="hidden" name="date_ob[]" value="<?php echo $ob->date_ob; ?>">
		                    </td>
		                    <td><?php echo $ob->site_from; ?></td>
		                    <td><?php echo $ob->site_to; ?></td>
		                    <td>
		                    	<?php echo $ob->type_ob; ?>
		                    	<input type="hidden" name="status[]" value="<?php echo $ob->type_ob; ?>">
		                    </td>
		                    <td><?php echo $ob->remarks; ?></td>
		                    <td>
		                      <a class="btn btn-xs btn-info" href="#">Edit</a>
		                      <a class="btn btn-danger btn-xs delete-btn" onclick="return confirm('Do you want to delete?');" href="#">Delete</a>
		                    </td>
			                </tr>
			                <?php endforeach; ?>
			            <?php endif; ?>
			    			</table>
	      		</div>
	  			</div>      
        </form>   
     </div>            
  </div>
</div>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>/assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#processOb').click(function() {
			var a = confirm("Process OB?");
			if (a == true) {
				$('#obForm').attr('action', 'process_ob');
				$('#obForm').submit();
			} else {
				return false;
			} 
		});
	});	
</script>
