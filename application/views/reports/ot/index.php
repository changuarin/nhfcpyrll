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
		margin-left: 1050px;
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
	      		<a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/reports/add_ot">Add</a>
	      	</div>	
	      </div>	
	        <form method="post">
				    <div class="panel-body">
				      <div class="table-responsive">
				          <table class="table table-bordered table-hover table-striped">
				          	<div class="row">  	
						          <div class="col-md-2">
							          <div class="form-group">
							              <label for="form_name">START</label>
							              <input id="form_name" type="text" name="start_date" class="form-control" value=" <?php echo $cut_off->start_date; ?>">
							          </div>
							        </div>
							        <div class="col-md-2">
							          <div class="form-group">
							              <label for="form_name">END</label>
							              <input id="form_name" type="text" name="end_date" class="form-control" value="<?php echo $cut_off->end_date; ?>">
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
			                    <th>Time In</th>
			                    <th>Time Out</th>
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
		  		</form>	
	     </div>            
	  </div>
	</div>
</div>
