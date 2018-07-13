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
        
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
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
			                    <td><?php echo $slvl->date; ?></td>
			                    <td><?php echo $slvl->type; ?></td>
			                    <td><?php echo $slvl->reason; ?></td>
			                    <td>
			                      <a class="btn btn-xs btn-info" href="#">Edit</a>
			                      <a class="btn btn-danger btn-xs delete-btn" onclick="return confirm('Do you want to delete?');" href="#">Delete</a>
			                    </td>
			                </tr>
			                <?php endforeach; ?>
			            <?php endif; ?>
			    			</table>
					        <div class="margin3">
					            <?php echo $this->pagination->create_links(); ?>
					        </div>     
	      		</div>
	  			</div>      
           

     </div>            
  </div>
</div>
</div>
