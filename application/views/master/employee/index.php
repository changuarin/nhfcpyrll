<style type="text/css">
	.container {
		margin-top: 100px;
		margin-left: 100px;
	}
	p {
		font-size: 24px;
		font-family: century gothic;
	}
	.add {
		margin-top: -45px;
		margin-left: 1050px;
	}
</style>
<div class="container">
<?php if($this->session->flashdata('branch_updated')) : ?>
     <p class="alert alert-dismissable alert-info"><?php echo $this->session->flashdata('branch_updated'); ?></p>
<?php endif; ?>
<?php if($this->session->flashdata('delete_emp')) : ?>
      <b class="alert alert-dismissable alert-danger"><?php echo $this->session->flashdata('delete_emp'); ?></b>
<?php endif; ?>  
<!-- TABLE OF BRANCHES -->
<div class="row">
	<div class="col-lg-12">

  	<div class="panel panel-default">
		  <div class="search">
	  		<?php echo form_open('index.php/master/index_employee'); ?>
         	<div class="input-group col-lg-5">
        		<input type="text" class="form-control" placeholder="Search" name = "keyword"size="10px; ">
	        	<div class="input-group-btn">
	          	<button class="btn btn-default " type="submit" value = "Search"><i class="glyphicon glyphicon-search"></i></button>
	          </div>  
      		</div>
	      <?php echo form_close(); ?>
    	</div>	
    	<div class="panel-heading">
      	<p>Employee List</p>
      	<div class="add">
        	 <a class="btn btn-primary" href="<?php echo base_url(); ?>index.php/master/add_employee">Add</a>
      	</div>
      </div>	
        
			    <div class="panel-body">
			      <div class="table-responsive">
			          <table class="table table-bordered table-hover table-striped">
			            <thead>
			                <tr>
			                    
			                    <th>Employee No</th>
			                    <th>Name</th>
			                    <th>Department</th>
			                    <th>Branch</th>
			                    <th>Date Hired</th>
			                    <th>Salary</th>
			                    <th>Action</th>
			                </tr>
			            </thead>

			            <?php if(isset($employee)) : ?>
			                <?php foreach($employee as $emp) : ?>
			                <tr>
			                   
			                    <td><?php echo $emp->employee_number; ?></td>
			                    <td><?php echo $emp->name; ?></td>
			                    <td><?php echo $emp->dept_name; ?></td>
			                    <td><?php echo $emp->company_name; ?></td>
			                    <td><?php echo $emp->branch_name; ?></td>
			                    <td><?php echo $emp->hired_date; ?></td>
			                    <td>
			                      <a class="btn btn-xs btn-info" href="#">Edit</a>
			                      <a class="btn btn-danger btn-xs delete-btn" onclick="return confirm('Do you want to delete?');" href="<?php echo base_url(); ?>index.php/master/delete_employee/<?php echo $emp->id; ?>">Delete</a>
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
