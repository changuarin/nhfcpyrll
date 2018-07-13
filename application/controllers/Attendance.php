<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Attendance extends CI_Controller {

	public function index_attendance()
	{
		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data['start_date'] = $this->input->post('start_date');
			$data['end_date'] = $this->input->post('end_date');
		}
		else 
		{
			$data['start_date'] = date('Y-m-d');
			$data['end_date'] = date('Y-m-d');
		}
		

		$data['employee'] = $this->payroll_model->get_allAttendance($data['start_date'], $data['end_date']);
		$data['schedules'] = $this->payroll_model->employee_sched();
		$data['main_content'] = 'payroll/attendance/index';

		$this->load->view('layouts/main', $data);
	}

}	