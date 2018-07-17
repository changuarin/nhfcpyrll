<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends CI_Controller {

	public function index_time_keeping()
	{
		$data['main_content'] = 'reports/timekeeping/index';
		$this->load->view('layouts/main', $data);
	}

	public function employee_timekeeping()
	{
		$employee_no = $this->input->post('employee_no');
		$start_date = $this->input->post('start_date');
		$end_date = $this->input->post('end_date');

		$data['employee_time'] = $this->payroll_model->employee_data($employee_no, $start_date, $end_date);
		$data['employee_name'] = $this->payroll_model->employee_name($employee_no);
		$data['schedules'] = $this->payroll_model->employee_sched();
		$data['slvl'] = $this->payroll_model->get_slvl($employee_no,$start_date,$end_date);
		$data['ot'] = $this->payroll_model->get_ot($employee_no, $start_date, $end_date);
		$data['main_content'] = 'reports/timekeeping/employee_attendance';
		$this->load->view('layouts/main', $data);
	}

	public function in_out_index()
	{
		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data['start_date'] = $this->input->post('start_date');
			$data['end_date'] = $this->input->post('end_date');
			$data['status'] = $this->input->post('status');
		}
		else 
		{
			$data['start_date'] = date('Y-m-d');
			$data['end_date'] = date('Y-m-d');
			$data['status'] = ' ';
		}
		$data['cut_off'] = $this->payroll_model->get_cut_off_date();
		$data['in'] = $this->payroll_model->get_in($data['start_date'], $data['end_date'], $data['status']);
		$data['outs'] = $this->payroll_model->get_out($data['start_date'], $data['end_date'], $data['status']);
		//$data['holidays'] = $this->payroll_model->get_holiday(); 
		$data['main_content'] = 'reports/timekeeping/index_add_in_out';
		$this->load->view('layouts/main', $data);
	}

	public function in_process()
	{
		foreach($this->input->post('ins') as $in)
			{
				$data = explode('|', $in);
				

				$in_data = array(
					'times' => $data[2]. ' ' . '08:00:00',
					'status'		=> 'IN'
				);
				
				$this->db->where('id', $data[1]);
				$this->db->update('tbl_in_attendance', $in_data);
			}
			redirect('reports/in_out_index');
	}

	public function out_process()
	{
		foreach($this->input->post('outs') as $out)
			{
				$data = explode('|', $out);
				

				$out_data = array(
					'times' => $data[2].' '.'17:30:00',
					'status'		=> 'OUT'
				);
				
				$this->db->where('id', $data[1]);
				$this->db->update('tbl_out_attendance', $out_data);
			}
			redirect('reports/in_out_index');
	}

	public function index_slvl()
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

		$data['cut_off'] = $this->payroll_model->get_cut_off_date();
		$data['slvl'] = $this->payroll_model->get_slvl_all($data['start_date'],$data['end_date']); 
		$data['main_content'] = 'reports/slvl/index'; 
		$this->load->view('layouts/main', $data);	
	
	}

	public function add_slvl()
	{
		$this->form_validation->set_rules('employee_number', 'Employee number', 'required|trim');
		$this->form_validation->set_rules('name', 'Employee Name', 'required|trim');
		$this->form_validation->set_rules('start_date', 'EFFECTIVE DATE OF LEAVE', 'required|trim');
		$this->form_validation->set_rules('end_date', 'EFFECTIVE DATE OF LEAVE', 'required|trim');
		$this->form_validation->set_rules('end_date', 'EFFECTIVE DATE OF LEAVE', 'required|trim');
		$this->form_validation->set_rules('reason', 'REASON', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'reports/slvl/add';
			$this->load->view('layouts/main', $data);
		}
		else 
		{
			if($this->payroll_model->add_slvl())
			{
				$this->session->set_flashdata('add_msg', 'SL/VL SUCCESSFULLY ADDED!');
				redirect('reports/index_slvl');
			}
		}
		
	}

	public function index_ob()
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
    
    $data['cut_off'] = $this->payroll_model->get_cut_off_date();
		$data['obs'] = $this->payroll_model->get_ob($data['start_date'], $data['end_date']);         
	  $data['main_content'] = 'reports/ob/index';  
		$this->load->view('layouts/main', $data);	  
	}  

	public function process_ob()
	{
		$this->payroll_model->process_ob();
	}

	public function add_ob()
	{
		$this->form_validation->set_rules('employee_number', 'Employee number', 'required|trim');
		$this->form_validation->set_rules('name', 'Employee Name', 'required|trim');
		$this->form_validation->set_rules('date', 'Date OF OB', 'required|trim');
		$this->form_validation->set_rules('site_from', 'SITE / DESIGNATION', 'required|trim');
		$this->form_validation->set_rules('site_to', 'SITE / DESIGNATION', 'required|trim');
		$this->form_validation->set_rules('purpose', 'Purpose', 'required|trim');
		$this->form_validation->set_rules('time_of_departure', 'TIME OF DEPARTURE', 'required|trim');
		$this->form_validation->set_rules('time_of_return', 'TIME OF RETURN', 'required|trim');


		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'reports/ob/add';
			$this->load->view('layouts/main', $data);
		}
		
		else
		{
			if($this->payroll_model->add_ob())
			{
				$this->session->set_flashdata('add_msg', 'OB SUCCESSFULLY ADDED!');
				redirect('reports/add_ob');
			}
		}
		
	}

	public function index_ot()
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

		$data['cut_off'] = $this->payroll_model->get_cut_off_date();
		$data['ots'] = $this->payroll_model->get_ots($data['start_date'], $data['end_date']);
		$data['main_content'] = 'reports/ot/index';
		$this->load->view('layouts/main', $data);
	}

	public function add_ot()
	{
		$this->form_validation->set_rules('employee_number', 'Employee number', 'required|trim');
		$this->form_validation->set_rules('name', 'Employee Name', 'required|trim');
		$this->form_validation->set_rules('date', 'Date OF OB', 'required|trim');
		$this->form_validation->set_rules('time_in', 'Time In', 'required|trim');
		$this->form_validation->set_rules('time_out', 'Time Out', 'required|trim');
		$this->form_validation->set_rules('nature_of_work', 'Nature Of Work', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'reports/ot/add';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->payroll_model->add_ot())
			{
				$this->session->set_flashdata('add_msg', 'OT SUCCESSFULLY ADDED!');
				redirect('reports/index_ot');
			}
		}

	}

	public function edit_ot($id)
	{
		$this->form_validation->set_rules('employee_number', 'Employee number', 'required|trim');
		$this->form_validation->set_rules('name', 'Employee Name', 'required|trim');
		$this->form_validation->set_rules('date', 'Date OF OB', 'required|trim');
		$this->form_validation->set_rules('time_in', 'Time In', 'required|trim');
		$this->form_validation->set_rules('time_out', 'Time Out', 'required|trim');
		$this->form_validation->set_rules('nature_of_work', 'Nature Of Work', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['ot'] = $this->payroll_model->get_ot_id($id);
			$data['main_content'] = 'reports/ot/edit';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->payroll_model->update_ot($id))
			{
				$this->session->set_flashdata('update_msg', 'OT SUCCESSFULLY UPDATED!');
				redirect('reports/index_ot');
			}
		}
	}

}