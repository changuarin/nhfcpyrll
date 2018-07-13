<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 100px;
	}
	p{
		font-size: 24px;
		font-family: century gothic;
	}
	table {
    width: 90px;
  }
  .row1 {
  	margin-left: 10px; 
  	margin-top: 5px;

  }
 
  .filter-table{
		position: fixed;
		margin-top: 0px;
		background-color: white;
		width: 100%;
		padding: 2px;
	}

	.is-true {
		background-color: #F9F7AD;
	}
	
	.trfixed{
		padding-bottom:10px;
	}
	
	.fixed{
		position: ;
		background-color: #FFF;
		width: 100%;
	}
</style>
<div class="container">
<?php if($this->session->flashdata('branch_updated')) : ?>
     <p class="alert alert-dismissable alert-info"><?php echo $this->session->flashdata('branch_updated'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('branch_deleted')) : ?>
      <p class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('branch_deleted'); ?></p>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12"> 
  	<div class="panel panel-default">
	    	<div class="panel-heading">
	      	<p>ATTENDANCE LIST</p>
	      	<p><?php echo validation_errors(); ?></p>
	      </div>	
	      	<div class="row1">
		       	<input type="submit" id="processBtn" class="btn btn-info" value="PROCESS">
		       	<?php 
		       	$start_date = $set_date->start_date; 
		       	$end_date = $set_date->end_date;

		       	$datediff = (strtotime($end_date) - strtotime($start_date));
						$num_dates = floor($datediff / (60 * 60 * 24));
						$num_dates = $num_dates + 1;
		       	?>
		       
        	</div>
	        <form id="attendanceForm" method="post">
	        		<input type="hidden" name="number_dates" value="<?php echo $num_dates; ?>">
					    <div class="panel-body">
					      <div class="table-responsive">
					          <table class="table table-bordered cl">
						          <tbody>
						          	<tr>
													<td class="trfixed">&nbsp;</td>
												</tr>
				                <tr>
				                	<th>ID</th>
				                  <th>Employee Number</th>
													<th>Name</th>
													<th>Date</th>
													<th>Time</th>
													<th>Status</th>
				                </tr>
						            <?php

						            $emp_no = '';
						            $status = '';
						            $i = 1;
						       

						            ?>
						            <?php if($employee) : ?>
													<?php foreach($employee as $emp) : ?>
																<?php if($emp->is_transfer == '0') : ?>	
																	<tr class="data">
									                	<td>
									                		<?php echo $i; ?>
									                	</td>
									                  <td>
									                  	<input type="text" name="employee_number[]" class="hidden" value="<?php echo $emp->employee_number; ?>">
									                  	<?php echo $emp->employee_number; ?>
									                  </td>
																		<td>
																			<input type="text" name="name[]" class="hidden" value="<?php echo  $emp->name; ?>">
																			<?php echo $emp->name; ?>
																		</td>
																		<?php 
																			$datetime = $emp->date_time;
																			$dt = explode(" ", $datetime);
																		?>
																		<td>
																			<input type="text" name="date[]" class="hidden" value="<?php echo  $dt[0]; ?>">
																			<?php echo $dt[0]; ?>
																		</td>
																			<td>
																			<input type="text" name="time[]" class="hidden" value="<?php echo  $emp->date_time; ?>">
																			<?php echo $dt[1]; ?>
																		</td>
																		<td>
																			<input type="text" name="status[]" class="hidden" value="<?php echo $emp->status; ?>">
																			<?php echo $emp->status; ?>
																		</td>
								                	</tr>
								                	<?php 
								                		$i++; 
								                	?>
								                <?php endif; ?>
						            	<?php endforeach; ?>
						            <?php endif; ?>
						          </tbody>	
					    			</table>
			      		</div>
			  			</div>      
          </form>

     </div>            
  </div>
</div>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>/assets/js/jquery.min.js"></script>
<script>
$(document).ready(function() {
		$('#processBtn').click(function() {
				var a = confirm("Process Attendance?");
				if (a == true) {
					$('#attendanceForm').attr('action', 'attendance_process');
					$('#attendanceForm').submit();
				} else {
					return false;
				} 
			});


		/*$("#checkAll").click(function(){
		    $('input:checkbox').not(this).prop('checked', this.checked);
		});

		$('#inBtn').click(function() {
			var a = confirm("Process IN/OUT?");
			if (a == true) {
				$('#attendanceForm').attr('action', 'is_in');
				$('#attendanceForm').submit();
			} else {
				return false;
			} 
		});

		$('#obBtn').click(function() {
			var a = confirm("Process OB?");
			if (a == true) {
				$('#attendanceForm').attr('action', 'is_ob');
				$('#attendanceForm').submit();
			} else {
				return false;
			} 
		});

		$('#processBtn').click(function() {
			var a = confirm("Process Attendance?");
			if (a == true) {
				$('#attendanceForm').attr('action', 'attendance_process');
				$('#attendanceForm').submit();
			} else {
				return false;
			} 
		});
		*/
	});
</script>