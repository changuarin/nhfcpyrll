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
<?php if($this->session->flashdata('delete_emp')) : ?>
      <b class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('delete_emp'); ?></b>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">

  	<div class="panel panel-default">
    	<div class="panel-heading">
      	<p>SL/VL List</p>
      	<div class="add">
        	 <a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/reports/add_slvl">Add</a>
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
	                    <th>Type</th>
	                    <th>Reason</th>
	                    <th>Action</th>
		                </tr>
			            </thead>

			            <?php if(isset($slvl)) : ?>
			                <?php foreach($slvl as $slvl) : ?>
			                <tr>
		                    <td><?php echo $slvl->employee_number; ?></td>
		                    <td><?php echo $slvl->name; ?></td>
		                    <td><?php echo $slvl->date_start . ' | ' . $slvl->date_end; ?></td>
		                    <td><?php echo $slvl->type; ?></td>
		                    <td><?php echo $slvl->reason; ?></td>
		                    <td>
		                      <a class="btn btn-xs btn-info" href="#">Edit</a>
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
