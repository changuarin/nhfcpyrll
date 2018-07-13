<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payroll extends CI_Controller {

	public function set_cutoff_date()
	{
		$this->form_validation->set_rules('start_date', 'Start Date', 'required|trim');
		$this->form_validation->set_rules('end_date', 'Start Date', 'required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'payroll/cutoff_date/index';
			$this->load->view('layouts/main', $data);
		}
		else
		{
			if($this->payroll_model->add_cut_off_date())
			{
				$this->session->set_flashdata('cutoff_msg', 'Cut-Off Successfully Added!');
				redirect('payroll/set_cutoff_date');
			}
		}
	}

	public function add_in_out()
	{
		$data['main_content'] = 'payroll/csv/add_in_out';
		$this->load->view('layouts/main', $data);
	}
}	