<style type="text/css">
	.container{
		margin-top: 100px;
		margin-left: 10px;
		width: 99%;
	}
	p{
		font-size: 24px;
		font-family: century gothic;
	} 
  .submit {
  	padding-top: 10px;
  	margin-left: 1020px;
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
	<div class="col-lg-17">
  	<div class="panel panel-default">
  		
	    	<div class="panel-heading">
	      	<p>Attendance List</p>
	      	<p><?php echo validation_errors(); ?></p>
	      </div>	
	        <form method="post">
					    <div class="panel-body">
					      <div class="table-responsive">
					          <table class="table table-bordered table-hover table-striped cl" id='tbl'>
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
				                  <th>Employee Number</th>
													<th>Name</th>
													<th>Date</th>
													<th>Time In</th>
													<th>Time Out</th>
													<th>Daily Hours</th>
													<th>Hours Late</th>
													<th>Undertime</th>
													<th>OT Morning</th>
													<th>OT Night</th>
													<th>ND</th> 
				                </tr>
					            </thead>
					            <tr>
												<td class="trfixed"></td>
											</tr>
					            <?php 
					            
					            	$i=1;

					            ?>
					            <?php if($schedules) : ?>
												<?php $fixed_daily_in = $schedules->daily_in; ?>
												<?php $fixed_daily_out = $schedules->daily_out; ?>
												<?php $fixed_friday_out = $schedules->daily_friday_out; ?>
											<?php endif; ?>	
									    <?php if($employee) : ?>
						    	 			<?php foreach($employee as $emp) : ?>
						    	 			<?php if($emp->in_status != 'NO IN' || $emp->out_status != 'NO OUT'): ?>
					    	 					<tr>
						    	 						<td>
						    	 							<?php echo $emp->employee_number; ?>
						    	 						</td>
						    	 						<td>
						    	 							<?php echo $emp->name; ?>
						    	 						</td>
							    	 					<td><?php echo $emp->dates; ?></td>
							    	 					<td>
																<?php 
																	//echo $empl->intime;
																	$in = explode(" ",$emp->intime);
																	echo $in[1]; 
																?>
															</td>
															<td>
																<?php 
																 	//echo $empl->outtime;
																	$out = explode(" ",$emp->outtime);
																	echo $out[1];
																?>	
															</td>
															<?php
																$in_office	= $fixed_daily_in; 
																$out_office   = $fixed_daily_out;
																$friday_out = $fixed_friday_out;
																$night_diff = '22:00';
																$in_daily = $emp->intime;
																$out_daily = $emp->outtime;
																$week_date = date('w', strtotime($emp->dates)); // Convert in days . friday (5)

																// EXPLODE DATE IN TIME IN / TIME OUT
																$explode_in_date_daily = explode(" ", $in_daily);
																$explode_out_date_daily = explode(" ", $out_daily);
																$date_date_in = $explode_in_date_daily[0];
																$date_date_out = $explode_out_date_daily[0];
																$date_in = $explode_in_date_daily[1];
																$date_out = $explode_out_date_daily[1];

																//NIGHT DIFF
																$explode_night_diff = explode(":", $night_diff);
																$night_diff_hr = $explode_night_diff[0]; 
																$night_diff_min = $explode_night_diff[1]; 
																$total_night_diff = intval($night_diff_hr*60) + $night_diff_min; // total night diff

																// EXPLODE IN AND OUT 
																$explode_in_office = explode(":", $in_office);
																$explode_out_office = explode(":", $out_office);
																$explode_friday_out_office = explode(":", $friday_out);
																$explode_in_daily = explode(":", $date_in);
																$explode_out_daily = explode(":", $date_out);
																$time_in_hr_daily = $explode_in_daily[0];
																$time_in_min_daily = $explode_in_daily[1];
																$time_out_hr_daily = $explode_out_daily[0];
																$time_out_min_daily = $explode_out_daily[1];
																$time_in_hr = $explode_in_office[0];
																$time_in_min = $explode_in_office[1];
																$time_out_hr = $explode_out_office[0];
																$time_out_min = $explode_out_office[1];
																$time_friday_out_hr = $explode_friday_out_office[0];
																$time_friday_out_min = $explode_friday_out_office[1];


																// Convert IN AND OUT
																$total_in_min = intval($time_in_hr*60) + $time_in_min; // DEFAULT IN
																$total_out_min = intval($time_out_hr*60) + $time_out_min; // DEFAULT OUT
																$total_friday_out_min = intval($time_friday_out_hr*60) + $time_friday_out_min; // DEFAULT OUT IN FRIDAY
																$total_in_daily = intval($time_in_hr_daily*60) + $time_in_min_daily; // EMPLOYEE IN
																$total_out_daily = intval($time_out_hr_daily*60) + $time_out_min_daily; // EMPLOYEE OUT

																//COMPUTATION IN OFFICE IN AND OUT
																$total_min_diff = intval($total_out_min - $total_in_min);
																$hr_diff = intval($total_min_diff/60);
																$min_diff = intval($total_min_diff%60);
																

																// IN AND OUT OF EMPLOYEE
																$in = strtotime($emp->intime);
																$out   = strtotime($emp->outtime);
																$diff  = $out - $in;

																//CONVERT OF IN AND OUT
																$hours = floor($diff / (60 * 60));
																$minutes = $diff - $hours * (60 * 60); 
																$total_minutes = floor( $minutes / 60 );
																
																// COMPUTATION OF IN AND OUT
																$total_number_of_hours = $hours.".".$total_minutes; //
																$total_office_hours = $hr_diff.".".$min_diff; // 9:30 Fixed
																$number_hr_daily = $total_number_of_hours; // TOTAL HOURS DAILY!
															?>
															<td>	
																<?php 
																// DAILY HOURS
																	if($week_date == 1 || $week_date == 2 || $week_date == 3 || $week_date == 4)
																	{
																		if($date_date_in == $date_date_out && $total_in_min >= $total_in_daily && $total_out_daily >= $total_out_min)
																		{
																			$total_min_diff = intval($total_out_min - $total_in_min);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}	
																		elseif($date_date_in == $date_date_out && $total_in_daily > $total_in_min )
																		{
																			$total_min_diff = intval($total_out_min - $total_in_daily);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}
																		elseif($date_date_in == $date_date_out && $total_out_daily < $total_out_min)
																		{
																			$total_min_diff = intval($total_out_daily - $total_in_min);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}
																		elseif($date_date_in != $date_date_out && $total_in_daily >= $total_in_min)
																		{
																			$total_min_diff = intval($total_out_min - $total_in_daily);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}
																	}
																	elseif($week_date == 5)
																	{
																		if($date_date_in == $date_date_out && $total_in_min >= $total_in_daily && $total_out_daily >= $total_friday_out_min)
																		{
																			$total_min_diff = intval($total_friday_out_min - $total_in_min);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}	
																		elseif($date_date_in == $date_date_out && $total_in_daily > $total_in_min )
																		{
																			$total_min_diff = intval($total_friday_out_min - $total_in_daily);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}
																		elseif($date_date_in == $date_date_out && $total_out_daily < $total_friday_out_min)
																		{
																			$total_min_diff = intval($total_out_daily - $total_in_min);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}
																		elseif($date_date_in != $date_date_out && $total_in_daily >= $total_in_min)
																		{
																			$total_min_diff = intval($total_friday_out_min - $total_in_daily);
																			$hr_diff = intval($total_min_diff/60);
																			$min_diff = intval($total_min_diff%60);
																			echo $hr_diff.".".$min_diff."";
																		}
																	}
																	else
																	{
																		echo ' ';
																	}
																?>
																
															</td>
															<td>
																<?php
																	//COMPUTATION OF HOURS LATE !
																	if($week_date == 1 || $week_date == 2 || $week_date == 3 || $week_date == 4)
																	{
																		if($total_in_daily >= $total_in_min)
																		{
																			$late_hr = intval($total_in_daily - $total_in_min);
																			$hr_diff = intval($late_hr/60);
																			$min_diff = intval($late_hr%60);
																			echo $hr_diff.".".$min_diff."";
																			$number_of_late = $hr_diff.".".$min_diff;
																		}
																		else
																		{
																			echo 0;
																		}
																	}	
																	elseif($week_date == 5)
																	{
																		if($total_in_daily >= $total_in_min)
																		{
																			$late_hr = intval($total_in_daily - $total_in_min);
																			$hr_diff = intval($late_hr/60);
																			$min_diff = intval($late_hr%60);
																			echo $hr_diff.".".$min_diff."";
																			$number_of_late = $hr_diff.".".$min_diff;
																		}
																		else
																		{
																			echo 0;
																		}
																	}
																	else
																	{
																		echo ' ';
																	}
																?>
															</td>
															<td>
																<?php
																//COMPUTATION OF UNDERTIME ! 
																if($week_date == 1 || $week_date == 2 || $week_date == 3 || $week_date == 4)
																{
																	if($date_date_in == $date_date_out && $total_out_min >= $total_out_daily)
																	{
																		$undertime_hr = intval($total_out_min - $total_out_daily);
																		$hr_diff = intval($undertime_hr/60);
																		$min_diff = intval($undertime_hr%60);
																		echo $hr_diff.".".$min_diff."";
																		$number_of_undertime = $hr_diff.".".$min_diff; 
																	}
																	else
																	{
																		echo 0;
																	}
																}
																elseif($week_date == 5)
																{
																	if($date_date_in == $date_date_out && $total_friday_out_min >= $total_out_daily)
																	{
																		$undertime_hr = intval($total_friday_out_min - $total_out_daily);
																		$hr_diff = intval($undertime_hr/60);
																		$min_diff = intval($undertime_hr%60);
																		echo $hr_diff.".".$min_diff."";
																		$number_of_undertime = $hr_diff.".".$min_diff; 
																	}
																	else
																	{
																		echo 0;
																	}
																}
																else
																{
																	echo ' ';
																}
																?>
															</td>
															<td>
																<?php
																	//COMPUTATION OF OT MORNING !
																	if($week_date == 1 || $week_date == 2 || $week_date == 3 || $week_date == 4)
																	{
																		if($total_in_daily <= $total_in_min)
																		{
																			$ot_hr = intval($total_in_min - $total_in_daily);
																			$hr_diff = intval($ot_hr/60);
																			$min_diff = intval($ot_hr%60);
																			echo $hr_diff.".".$min_diff."";
																			$number_ot_morning = $hr_diff.".".$min_diff;
																		} 
																		else
																		{
																			echo 0;
																		}
																	}
																	elseif($week_date == 5)
																	{
																		if($total_in_daily <= $total_in_min)
																		{
																			$ot_hr = intval($total_in_min - $total_in_daily);
																			$hr_diff = intval($ot_hr/60);
																			$min_diff = intval($ot_hr%60);
																			echo $hr_diff.".".$min_diff."";
																			$number_ot_morning = $hr_diff.".".$min_diff;
																		} 
																		else
																		{
																			echo 0;
																		}
																	}
																	else
																	{
																		echo ' ';
																	}
																?>
															</td>
															<td class="data <?php ?>">
																<?php
																	//COMPUTATION OF OT NIGHT !
																	if($week_date == 1 || $week_date == 2 || $week_date == 3 || $week_date == 4)
																	{
																		if($total_out_daily >= $total_out_min && $date_date_in == $date_date_out) 
																		{
																			$late_hr = intval($total_out_daily - $total_out_min);
																			$hr_diff = intval($late_hr/60);
																			$min_diff = intval($late_hr%60);
																			echo $hr_diff.".".$min_diff."";
																			$number_ot_night = $hr_diff.".".$min_diff;

																		}	
																		elseif($date_date_in != $date_date_out)
																		{
																			$explode_ot_morning_hr_min = explode(".", $number_ot_morning);
																			$explode_total_hrs = explode(".", $number_hr_daily);
																			$total_hrs = $explode_total_hrs[0];
																			$total_mins = $explode_total_hrs[1];
																			$total_hr = $explode_ot_morning_hr_min[0];
																			$total_min = $explode_ot_morning_hr_min[1];
																			
																			$total_in_and_out = $total_out_min - $total_in_min ;
																			$total_ot_morning_min = intval($total_hr*60) + $total_min; // OT MORNING
																			$total_daily_min = intval($total_hrs*60) + $total_mins; // TOTAL HRS CONVERT TO MINS

																			$compute_total_in_and_ot_morning = $total_in_and_out + $total_ot_morning_min;
																			$total_ot_hrs = $total_daily_min - $compute_total_in_and_ot_morning;

																			$hr_ot_diff = intval($total_ot_hrs/60);
																			$min_ot_diff = intval($total_ot_hrs%60);
																			$total_ot_night = $hr_ot_diff.".".$min_ot_diff."";
																			echo $total_ot_night;
																		}
																		else
																		{
																			echo 0 ;
																		}
																	}	
																	elseif($week_date == 5)
																	{
																		if($total_out_daily >= $total_friday_out_min && $date_date_in == $date_date_out) 
																		{
																			$late_hr = intval($total_out_daily - $total_friday_out_min);
																			$hr_diff = intval($late_hr/60);
																			$min_diff = intval($late_hr%60);
																			echo $hr_diff.".".$min_diff."";
																			$number_ot_night = $hr_diff.".".$min_diff;

																		}	
																		elseif($date_date_in != $date_date_out)
																		{
																			$explode_ot_morning_hr_min = explode(".", $number_ot_morning);
																			$explode_total_hrs = explode(".", $number_hr_daily);
																			$total_hrs = $explode_total_hrs[0];
																			$total_mins = $explode_total_hrs[1];
																			$total_hr = $explode_ot_morning_hr_min[0];
																			$total_min = $explode_ot_morning_hr_min[1];
																			
																			$total_in_and_out = $total_friday_out_min - $total_in_min ;
																			$total_ot_morning_min = intval($total_hr*60) + $total_min; // OT MORNING
																			$total_daily_min = intval($total_hrs*60) + $total_mins; // TOTAL HRS CONVERT TO MINS

																			$compute_total_in_and_ot_morning = $total_in_and_out + $total_ot_morning_min;
																			$total_ot_hrs = $total_daily_min - $compute_total_in_and_ot_morning;

																			$hr_ot_diff = intval($total_ot_hrs/60);
																			$min_ot_diff = intval($total_ot_hrs%60);
																			$total_ot_night = $hr_ot_diff.".".$min_ot_diff."";
																			echo $total_ot_night;
																		}
																		else
																		{
																			echo 0 ;
																		}
																	}
																	elseif($week_date == 6)
																	{
																		$ot_hr = intval($total_out_daily - $total_in_daily);
																		$hr_diff = intval($ot_hr/60);
																		$min_diff = intval($ot_hr%60);
																		echo $hr_diff.".".$min_diff."";
																	}
																	else
																	{
																		$ot_hr = intval($total_out_daily - $total_in_daily);
																		$hr_diff = intval($ot_hr/60);
																		$min_diff = intval($ot_hr%60);
																		echo $hr_diff.".".$min_diff."";
																	}
																?>
															</td>
															<td>
																<?php
																	//NIGHT DIFF
																	if($week_date == 1 || $week_date == 2 || $week_date == 3 || $week_date == 4)
																	{
																		$number_hrs = explode(".", $total_number_of_hours);
																		$number_hrs_hr = $number_hrs[0];
																		$number_hrs_min = $number_hrs[1];
																		$total_hour = $number_hr_daily;
																		$test5 = intval($number_hrs_hr*60) + $number_hrs_min;
																		$test = $total_out_daily - $total_night_diff; 
																		$hr_ot_diff = intval($test/60);
																		$min_ot_diff = intval($test%60);
																		$total_hour = $total_night_diff + $total_in_min;
																		$test2 = $total_out_daily + $total_in_daily; 
																		if($date_date_in == $date_date_out && $total_out_daily >= $total_night_diff )
																		{
																			echo $hr_ot_diff.".".$min_ot_diff."";
																		}
																		elseif($date_date_in != $date_date_out)
																		{
																			$mid_hrs = '24.0';
																			$explode_mid_hr = explode(".", $mid_hrs);

																			$mid_hr = $explode_mid_hr[0];
																			$mid_min = $explode_mid_hr[1];
																			$total_mid_min = intval($mid_hr*60) + $mid_min;
																			$compute_np = $total_mid_min + $total_out_daily;
																			$total_np = $compute_np - $total_night_diff;
																			$hr_mid_diff = intval($total_np/60);
																			$min_mid_diff = intval($total_np%60);

																			echo $hr_mid_diff.".".$min_mid_diff."";
																		}
																		elseif($date_date_in == $date_date_out && $total_night_diff >= $total_out_daily)
																		{
																			echo 0;
																		}
																	}	
																	elseif($week_date == 5) 
																	{
																		$number_hrs = explode(".", $total_number_of_hours);
																		$number_hrs_hr = $number_hrs[0];
																		$number_hrs_min = $number_hrs[1];
																		$total_hour = $number_hr_daily;
																		$test5 = intval($number_hrs_hr*60) + $number_hrs_min;
																		$test = $total_out_daily - $total_night_diff; 
																		$hr_ot_diff = intval($test/60);
																		$min_ot_diff = intval($test%60);
																		$total_hour = $total_night_diff + $total_friday_out_min;
																		$test2 = $total_out_daily + $total_in_daily; 
																		if($date_date_in == $date_date_out && $total_out_daily >= $total_night_diff )
																		{
																			echo $hr_ot_diff.".".$min_ot_diff."";
																		}
																		elseif($date_date_in != $date_date_out)
																		{
																			$mid_hrs = '24.0';
																			$explode_mid_hr = explode(".", $mid_hrs);

																			$mid_hr = $explode_mid_hr[0];
																			$mid_min = $explode_mid_hr[1];
																			$total_mid_min = intval($mid_hr*60) + $mid_min;
																			$compute_np = $total_mid_min + $total_out_daily;
																			$total_np = $compute_np - $total_night_diff;
																			$hr_mid_diff = intval($total_np/60);
																			$min_mid_diff = intval($total_np%60);

																			echo $hr_mid_diff.".".$min_mid_diff."";
																		}
																		elseif($date_date_in == $date_date_out && $total_night_diff >= $total_out_daily)
																		{
																			echo 0;
																		}
																	}
																	else
																	{
																		echo ' ';
																	}
																?>
															</td>
							    	 				</tr>	
						    	 				<?php endif; ?>
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




