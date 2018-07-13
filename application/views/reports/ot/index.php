<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 100px;
	}
	p{
		font-size: 24px;
		font-family: century gothic;
	}
	.add{
		margin-top: -45px;
		margin-left: 970px;
	}
</style>
<div class="container">
<?php if($this->session->flashdata('add_msg')) : ?>
   <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('add_msg'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('update_msg')) : ?>
   <p class="alert alert-dismissable alert-success"><?php echo $this->session->flashdata('update_msg'); ?></p>
<?php endif; ?> 
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">

  	<div class="panel panel-default">
    	<div class="panel-heading">
      	<p>OT List</p>

      	<div class="add">
    			<input type="button" class="btn btn-primary" name="" value="Process">
      		<a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/reports/add_ot">Add</a>
      	</div>	
      </div>	
        
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    
			                    <th>Employee No</th>
			                    <th>Name</th>
			                    <th>Date</th>
			                    <th>Time In</th>
			                    <th>Time Out</th>
			                    <th>TOTAL OT</th>
			                    <th>Nature Of Work</th>
			                    <th><center>Action</center></th>
			                </tr>
			            </thead>

			            <?php if(isset($ots)) : ?>
			                <?php foreach($ots as $ot) : ?>
			                <tr>

			                    <td><?php echo $ot->employee_number; ?></td>
			                    <td><?php echo $ot->name; ?></td>
			                    <td><?php echo $ot->date_ot; ?></td>
			                    <td><?php echo $ot->time_in; ?></td>
			                    <td><?php echo $ot->time_out; ?></td>
			                    <td>
			                    	<?php

				                   		$in_ot = explode(':', $ot->time_in);
				                   		$hr_in_ot = $in_ot[0];
				                   		$min_in_ot = $in_ot[1];

				                   		$out_ot = explode(':', $ot->time_out);
				                   		$hr_out_ot = $out_ot[0];
				                   		$min_out_ot = $out_ot[1];

				                   		$total_ot_in_min = intval($hr_in_ot*60) + $min_in_ot; 
															$total_ot_out_min = intval($hr_out_ot*60) + $min_out_ot; 

															$total_min_diff = intval($total_ot_out_min - $total_ot_in_min);
															$hr_diff = intval($total_min_diff/60);
															$min_diff = intval($total_min_diff%60);
															echo $hr_diff.".".$min_diff."";
			                   		?>
			                   	</td>
			                    <td><?php echo $ot->nature_of_work; ?></td>
			                    <td>
			                      <center><a class="btn btn-xs btn-info" href="<?php echo base_url(); ?>index.php/reports/edit_ot/<?php echo $ot->id; ?>">Edit</a></center>
			                    </td>
			                </tr>
			                <?php endforeach; ?>
			            <?php endif; ?>
			    			</table>
	      		</div>
	  			</div>      
           

     </div>            
  </div>
</div>
</div>
