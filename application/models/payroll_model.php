<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payroll_model extends CI_Model {

	public function get_allAttendance($start_date, $end_date)
	{
		$this->db->select('
			tbl_in_attendance.id as id,
			tbl_in_attendance.employee_number as employee_number,
			tbl_in_attendance.name as name,
			tbl_in_attendance.dates as dates,
			tbl_in_attendance.times as intime,
			tbl_out_attendance.times as outtime,
			tbl_in_attendance.status as in_status,
			tbl_out_attendance.status as out_status
			');
		$this->db->from('tbl_in_attendance');
		$this->db->where('tbl_in_attendance.dates >=', $start_date);
		$this->db->where('tbl_in_attendance.dates <=', $end_date);
		$this->db->join('tbl_out_attendance','tbl_in_attendance.id = tbl_out_attendance.in_id');
		$this->db->order_by('tbl_in_attendance.dates', 'ASC');
		$this->db->order_by('tbl_in_attendance.employee_number', 'ASC');
		$this->db->order_by('tbl_in_attendance.status', 'ASC');

 		$query = $this->db->get();

		return $query->result();
	}

	public function get_holiday()
	{
		$this->db->select('calendar.dates as dates');
		$this->db->from('calendar');
		$query = $this->db->get();

		return $query->result(); 
	}

	public function get_in($start_date, $end_date, $status)
	{

		$this->db->select('
			tbl_in_attendance.id as id,
			tbl_in_attendance.employee_number as employee_number,
			tbl_in_attendance.name as name,
			tbl_in_attendance.dates as dates,
			tbl_in_attendance.times as intime,
			tbl_in_attendance.status as status,
			tbl_out_attendance.times as outtime,
			tbl_out_attendance.status aS out_status
			');
		$this->db->from('tbl_in_attendance');
		$this->db->where('tbl_in_attendance.dates >=', $start_date);
		$this->db->where('tbl_in_attendance.dates <=', $end_date);
		$this->db->where('tbl_in_attendance.status =', 'NO IN');
		//$this->db->where('tbl_out_attendance.status =', 'NO OUT');
		$this->db->where('tbl_in_attendance.status =', $status);
		$this->db->join('tbl_out_attendance','tbl_in_attendance.id = tbl_out_attendance.in_id');
		$this->db->order_by('tbl_in_attendance.dates', 'ASC');
		$this->db->order_by('tbl_in_attendance.employee_number', 'ASC');
		$this->db->order_by('tbl_in_attendance.status', 'ASC');

		$query = $this->db->get();

		return $query->result();
	}
	public function get_out($start_date, $end_date, $status)
	{
		$this->db->select('
			tbl_out_attendance.id as id,
			tbl_out_attendance.employee_number as employee_number,
			tbl_out_attendance.name as name,
			tbl_out_attendance.dates as dates,
			tbl_out_attendance.times as outtime,
			tbl_out_attendance.status as status,
			tbl_in_attendance.times as intime
			');
		$this->db->from('tbl_out_attendance');
		$this->db->where('tbl_out_attendance.dates >=', $start_date);
		$this->db->where('tbl_out_attendance.dates <=', $end_date);
		$this->db->where('tbl_out_attendance.status =', 'NO OUT');
		$this->db->where('tbl_out_attendance.status =', $status);
		$this->db->join('tbl_in_attendance','tbl_in_attendance.id = tbl_out_attendance.in_id');
		$this->db->order_by('tbl_out_attendance.dates', 'ASC');
		$this->db->order_by('tbl_out_attendance.employee_number', 'ASC');
		$this->db->order_by('tbl_out_attendance.status', 'ASC');

		$query = $this->db->get();

		return $query->result();
	}

	public function add_cut_off_date()
	{
		$start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
		$end_date = date('Y-m-d', strtotime($this->input->post('end_date')));

		$data = array(
		'start_date' => $start_date,
		'end_date'   => $end_date 
		);
 
		$query = $this->db->insert('tbl_cut_off_date', $data);
		
		return $query;
	}

	public function get_cut_off_date()
	{
		$this->db->select('start_date,end_date');
		$this->db->from('tbl_cut_off_date');
		$this->db->order_by('id','DESC');
		$query = $this->db->get();

		return $query->row();
	}

	public function employee_data($employee_no, $start_date, $end_date)
	{	

		$this->db->select('
			tbl_in_attendance.id as id,
			tbl_in_attendance.employee_number as employee_number,
			tbl_in_attendance.name as name,
			tbl_in_attendance.dates as date,
			tbl_in_attendance.times as intime,
			tbl_out_attendance.times as outtime,
			tbl_in_attendance.status as in_status,
			tbl_out_attendance.status as out_status
			');
		$this->db->from('tbl_in_attendance');
		//$this->db->order_by('name', 'ASC');
		$this->db->order_by('date', 'ASC');
		$this->db->where('tbl_in_attendance.employee_number', $employee_no);
		$this->db->where('tbl_in_attendance.dates >=', $start_date);
		$this->db->where('tbl_in_attendance.dates <=', $end_date);
		$this->db->join('tbl_out_attendance','tbl_in_attendance.id = tbl_out_attendance.in_id');

		$query = $this->db->get();
		return $query->result();
	}

	public function get_ot($employee_no, $start_date, $end_date)
	{
		$this->db->select('tbl_ot.date_ot as date_ot');
		$this->db->from('tbl_ot');
		$this->db->where('tbl_ot.employee_number', $employee_no);
		$this->db->where('tbl_ot.date_ot >=', $start_date);
		$this->db->where('tbl_ot.date_ot <=', $end_date);
		$query = $this->db->get();

		return $query->result();
	}

	public function get_ots($start_date, $end_date)
	{
		$this->db->select('tbl_ot.id as id, tbl_ot.employee_number as employee_number, tbl_ot.name as name,tbl_ot.time_in as time_in, tbl_ot.time_out as time_out, tbl_ot.date_ot as date_ot, tbl_ot.nature_of_work as nature_of_work');
		$this->db->from('tbl_ot');
		$this->db->where('tbl_ot.date_ot >=', $start_date);
		$this->db->where('tbl_ot.date_ot <=', $end_date);
		$query = $this->db->get();

		return $query->result();
	}

	public function get_ot_id($id)
	{
		$this->db->select('tbl_ot.id as id, tbl_ot.employee_number as employee_number, tbl_ot.name as name,tbl_ot.time_in as time_in, tbl_ot.time_out as time_out, tbl_ot.date_ot as date_ot, tbl_ot.nature_of_work as nature_of_work');
		$this->db->from('tbl_ot');
		$this->db->where('id', $id);
		$query = $this->db->get();

		return $query->row();
	}

	public function add_ot()
	{
		$this->db->trans_start();

		$data = array(
			'employee_number' => $this->input->post('employee_number'),
			'name'            => $this->input->post('name'),
			'date_ot'         => $this->input->post('date'),
			'time_in'         => $this->input->post('time_in'),
			'time_out'        => $this->input->post('time_out'),
			'nature_of_work'  => $this->input->post('nature_of_work')
		);

		$query = $this->db->insert('tbl_ot', $data);

		$this->db->select('id,time_in,time_out');
		$this->db->order_by('id','DESC');
		$this->db->from('tbl_ot');
		$query = $this->db->get();
		$id = $query->row()->id;
		$timein = $query->row()->time_in;
		$timeout = $query->row()->time_out;

		$in_ot = explode(':', $timein);
 		$hr_in_ot = $in_ot[0];
 		$min_in_ot = $in_ot[1];

 		$out_ot = explode(':', $timeout);
 		$hr_out_ot = $out_ot[0];
 		$min_out_ot = $out_ot[1];

 		$total_ot_in_min = intval($hr_in_ot*60) + $min_in_ot; 
		$total_ot_out_min = intval($hr_out_ot*60) + $min_out_ot; 

		$total_min_diff = intval($total_ot_out_min - $total_ot_in_min);
		$hr_diff = intval($total_min_diff/60);
		$min_diff = intval($total_min_diff%60);
		$ot_num = $hr_diff.".".$min_diff."";

		$data = array(
			'ot_num' => $ot_num
		);
		$this->db->where('id', $id);
		$this->db->update('tbl_ot', $data);

		$trans = $this->db->trans_complete();
		return $trans;
	}

	public function update_ot($id)
	{
		$data = array(
			'employee_number' => $this->input->post('employee_number'),
			'name'            => $this->input->post('name'),
			'date_ot'         => $this->input->post('date'),
			'time_in'         => $this->input->post('time_in'),
			'time_out'        => $this->input->post('time_out'),
			'nature_of_work'  => $this->input->post('nature_of_work')
		);
		$this->db->where('id', $id);
		$query = $this->db->update('tbl_ot', $data);

		return $query;
	}

	public function get_schedules()
	{
		$this->db->select('*');
		$query = $this->db->get('tbl_schedules');
		return $query->result();
	}

	public function employee_name($employee_no)
	{	
		$this->db->select('name');
		$this->db->where('employee_number', $employee_no);
		$query = $this->db->get('tbl_in_attendance');
	
		return $query->row();
	}
	public function employee_sched()
	{	
		$this->db->select('*');
		$query = $this->db->get('tbl_schedules');
		return $query->row();
	}
	public function set_in_out($employee_no, $start_date)
	{	
		$this->db->select('tbl_in_attendance.id as id,tbl_in_attendance.employee_number as employee_number, tbl_in_attendance.name as name');
		$this->db->from('tbl_in_attendance');
		$this->db->where('employee_number', $employee_no);
		$this->db->where('date >=', $start_date);
		$query = $this->db->get();
		return $query->row();
	}	

	public function add_slvl()
	{
		$this->db->trans_start();

		$start_date = date('Y-m-d', strtotime($this->input->post('start_date')));
		$end_date = date('Y-m-d', strtotime($this->input->post('end_date')));
		$data = array(
			'employee_number'      => $this->input->post('employee_number'),
			'name'                 => $this->input->post('name'),
			'date'								 =>	$start_date,
			'effective_date_start' => $start_date,
			'effective_date_end'   => $end_date,
			'type'                 => $this->input->post('slvl_type'),
			'reason'               => $this->input->post('reason')
		);

		$this->db->insert('tbl_slvl', $data);

		$this->db->select('id,effective_date_start, effective_date_end');
		$this->db->order_by('id', 'DESC');
		$query=$this->db->get('tbl_slvl');
		$id = $query->row()->id;
		$startdate = $query->row()->effective_date_start;
		$enddate = $query->row()->effective_date_end;

		$start_date = $startdate; 
   	$end_date = $enddate;

   	$datediff = (strtotime($end_date) - strtotime($start_date));
		$num_dates = floor($datediff / (60 * 60 * 24));
		$num_dates = $num_dates + 1;

		$data = array(
			'slvl_num' => $num_dates
		);
		$this->db->where('id', $id);
		$this->db->update('tbl_slvl', $data);

		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function get_slvl_all($start_date, $end_date)
	{
		$this->db->select("tbl_slvl.employee_number as employee_number, tbl_slvl.name as name, tbl_slvl.type as type, tbl_slvl.date as date, tbl_slvl.effective_date_start as date_start, tbl_slvl.effective_date_end as date_end, tbl_slvl.reason as reason");
		$this->db->from('tbl_slvl');
		$this->db->where('tbl_slvl.date >=', $start_date);
		$this->db->where('tbl_slvl.date <=', $end_date);
		$query = $this->db->get();

		return $query->result();
	}

	public function get_slvl($employee_no,$start_date,$end_date)
	{
		$this->db->select('tbl_slvl.employee_number as employee_number, tbl_slvl.type as type, tbl_slvl.effective_date_start as effective_date_start, tbl_slvl.effective_date_end as effective_date_end, tbl_slvl.reason as reason');
		$this->db->from('tbl_slvl');
		$this->db->where('tbl_slvl.employee_number', $employee_no);
		$this->db->where('tbl_slvl.effective_date_start >=', $start_date);
		$this->db->where('tbl_slvl.effective_date_start <=', $end_date);
		$query = $this->db->get();

		return $query->result();
	}

	public function get_ob($start_date, $end_date)
	{
		$this->db->select('tbl_ob.employee_number as employee_number, tbl_ob.name as name, tbl_ob.date_ob as date_ob, tbl_ob.site_designation_from as site_from, tbl_ob.site_designation_to as site_to, tbl_ob.type_ob as type_ob, tbl_ob.remarks as remarks');
		$this->db->from('tbl_ob');
		$this->db->where('tbl_ob.date_ob >=', $start_date);
		$this->db->where('tbl_ob.date_ob <=', $end_date);
	  $query = $this->db->get();
	  
	  return $query->result();
	}

	public function add_ob()
	{
		$this->db->trans_start();

		$date_ob = date('Y-m-d', strtotime($this->input->post('date')));
		$data = array(
			'employee_number'       => $this->input->post('employee_number'), 
			'name'          			  => $this->input->post('name'),
			'date_ob'        			  => $date_ob, 
			'type_ob'         			=> $this->input->post('ob_type'), 
			'site_designation_from' => $this->input->post('site_from'), 
			'site_designation_to'   => $this->input->post('site_to'), 
			'purpose'               => $this->input->post('purpose'), 
			'time_of_departure'     => $this->input->post('time_of_departure'), 
			'time_of_return'        => $this->input->post('time_of_return') 
		);

		$this->db->insert('tbl_ob', $data);

		$trans = $this->db->trans_complete();
	
		return $trans;	
	}

	public function process_time_keeping()
	{
		$this->db->trans_start();
		$name 			= $this->input->post('name');
		$dates 			= $this->input->post('dates');
		$intime 		= $this->input->post('intime');
		$outtime 		= $this->input->post('outtime');
		$daily_hrs 	= $this->input->post('daily_hrs');
		$hours_late = $this->input->post('hours_late');
		$undertime 	= $this->input->post('undertime');
		$ot_morning = $this->input->post('ot_morning');
		$ot_night   = $this->input->post('ot_night');
		$night_diff = $this->input->post('nd');
		$i = 0;

		foreach($this->input->post('employee_number') as $emp_no)
		{
			$data = array(
				'employee_number' => $emp_no,
				'name'            => $name[$i],
				'dates'            => $dates[$i],
				'time_in'         => $intime[$i],
				'time_out'       	=> $outtime[$i],
				'daily_hours'     => $daily_hrs[$i],
				'hours_late'      => $hours_late[$i],
				'undertime'       => $undertime[$i],
				'ot_morning'      => $ot_morning[$i],
				'ot_night'        => $ot_night[$i],
				'night_diff'      => $night_diff[$i]
			);
			$this->db->insert('tbl_time_keeping', $data);
			$i++;
		}
		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function process_ob()
	{
		$this->db->trans_start();

		$process_date = date('Y-m-d', strtotime($this->input->post('process_date')));
		$date_ob = $this->input->post('date_ob'); 
		$status = $this->input->post('status');
		$trans = '';
		$i = 0;
		
		foreach($this->input->post('employee_number') as $emp_no)
		{
			if($status[$i] == 'UD_in')
			{
				$data = array(
					'times'  => $date_ob[$i]." ".'08:00:00',
					'status' => 'in'
				);
				$this->db->where('dates', $date_ob[$i]);
				$this->db->where('employee_number', $emp_no);
				$this->db->update('tbl_in_attendance', $data);
			}
			elseif($status[$i] == 'UD_out')
			{
				$data = array(
					'times' => $date_ob[$i]." ".'17:30:00',
					'status' => 'out'
				);
				$this->db->where('dates', $date_ob[$i]);
				$this->db->where('employee_number', $emp_no);
				$this->db->update('tbl_out_attendance', $data);
			}
			elseif($status[$i] == 'WD')
			{
				$data = array(
					'times'           => $date_ob[$i]." ".'8:00:00',
					'status'          => 'in'
				);
				
				$this->db->where('dates', $date_ob[$i]);
				$this->db->where('employee_number', $emp_no);
				$this->db->update('tbl_in_attendance', $data);

				$data = array(
					'times'           => $date_ob[$i]." ".'17:30:00',
					'status'          => 'out'
				);
				$this->db->where('dates', $date_ob[$i]);
				$this->db->where('employee_number', $emp_no);
				$this->db->update('tbl_out_attendance', $data);
			}
			$data = array(
				'remarks'			 => 'OK',
				'process_date' => $process_date
			);
			$this->db->update('tbl_ob', $data);
			$i++;
		}	
		
		$trans = $this->db->trans_complete();
	
		return $trans;
	
	}


}	