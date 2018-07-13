<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_model extends CI_Model {

	public function get_department()
	{
		$query = $this->db->get('department');
		return $query->result(); 
	}

	public function get_branches()
	{
		$query = $this->db->get('branches');
		return $query->result();
	}

	public function get_company()
	{
		$query = $this->db->get('company');
		return $query->result();
	} 

	public function add_employee()
	{
		$this->db->trans_start();
		$birthdate  	= date('Y-m-d', strtotime($this->input->post('birthdate')));
		$hireddate	  = date('Y-m-d', strtotime($this->input->post('date_hired')));
		$created_date = date('Y-m-d');
		$spouse_birthdate  	= date('Y-m-d', strtotime($this->input->post('spouse_birthdate')));
		$children_birthdate  	= date('Y-m-d', strtotime($this->input->post('children_birthdate')));
		$children_birthdate2  	= date('Y-m-d', strtotime($this->input->post('children_birthdate2')));
		$children_birthdate3  	= date('Y-m-d', strtotime($this->input->post('children_birthdate3')));
		$benificiary_birthdate  	= date('Y-m-d', strtotime($this->input->post('benificiary_birthdate')));
		$benificiary_birthdate2  	= date('Y-m-d', strtotime($this->input->post('benificiary_birthdate2')));
		
		$data = array( 
			'employee_number'    => $this->input->post('employee_number'),
			'last_name'          => $this->input->post('last_name'),
			'first_name'         => $this->input->post('first_name'),
			'middle_name'        => $this->input->post('middle_name'),
			'age'                => $this->input->post('age'),
			'gender'             => $this->input->post('gender'), 
			'birthdate'          => $birthdate,
			'status'           	 => $this->input->post('status'),
			'registered_address' => $this->input->post('registered_address'),
			'provincial_address' => $this->input->post('provincial_address'),
			'contact_number'		 => $this->input->post('contact_no'),
			'employment_status'  => $this->input->post('employment_status'),
			'sss_no'             => $this->input->post('sss_no'),
			'pagibig_no'         => $this->input->post('pagibig_no'),
			'phil_no'            => $this->input->post('phil_no'),
			'tin_no'             => $this->input->post('tin_no'),
			'tax_exemption'      => $this->input->post('tax_exemption'),
			'salary'             => $this->input->post('salary'),
			'company_id'         => $this->input->post('company'),
			'branch_id'          => $this->input->post('branches'),
			'department_id'      => $this->input->post('department'),
			'date_hired'         => $hireddate,
			'created_date'       => $created_date,
			'created_by'         => $this->session->userdata('username')
		);

		$this->db->insert('tbl_employees', $data);

		$this->db->select('id');
		$this->db->order_by('id', 'DESC');
		$query = $this->db->get('tbl_employees');
		$employee_id = $query->row()->id;

		$data = array (
			array (
				'employee_id' => $employee_id,
				'name_type'   => $this->input->post('spouse'),
				'last_name'   => $this->input->post('spouse_lastname'),
				'first_name'  => $this->input->post('spouse_firstname'),
				'middle_name' => $this->input->post('spouse_middlename'),
				'birthdate'   => $spouse_birthdate,
			),
			array (
				'employee_id' => $employee_id,
				'name_type'   => $this->input->post('children'),
				'last_name'   => $this->input->post('children_lastname'),
				'first_name'  => $this->input->post('children_firstname'),
				'middle_name' => $this->input->post('children_middlename'),
				'birthdate'   => $children_birthdate,
			),
			array (
				'employee_id' => $employee_id,
				'name_type'   => $this->input->post('children'),
				'last_name'   => $this->input->post('children_lastname2'),
				'first_name'  => $this->input->post('children_firstname2'),
				'middle_name' => $this->input->post('children_middlename2'),
				'birthdate'   => $children_birthdate,
			),
			array (
				'employee_id' => $employee_id,
				'name_type'   => $this->input->post('children'),
				'last_name'   => $this->input->post('children_lastname3'),
				'first_name'  => $this->input->post('children_firstname3'),
				'middle_name' => $this->input->post('children_middlename3'),
				'birthdate'   => $children_birthdate,
			)
		);

		$this->db->insert_batch('dependent_beneficiary', $data);

		$data = array (
			array (
				'employee_id' => $employee_id,
				'last_name'   => $this->input->post('benificiary_lastname'),
				'first_name'   => $this->input->post('benificiary_firstname'),
				'middle_name'  => $this->input->post('benificiary_middlename'),
				'relationship' => $this->input->post('benificiary_relationship'),
				'birthdate'   => $benificiary_birthdate,
			),
			array (
				'employee_id' => $employee_id,
				'last_name'   => $this->input->post('benificiary_lastname2'),
				'first_name'   => $this->input->post('benificiary_firstname2'),
				'middle_name'  => $this->input->post('benificiary_middlename2'),
				'relationship' => $this->input->post('benificiary_relationship2'),
				'birthdate'   => $benificiary_birthdate2,
			)
		);

		$this->db->insert_batch('other_beneficiary', $data);

		$trans = $this->db->trans_complete();
		return $trans;
	}

	public function delete_employee($id)
	{
		$this->db->trans_start();

		$this->db->where('id', $id);
		$this->db->delete('tbl_employees');

		$this->db->where('employee_id', $id);
		$this->db->delete('dependent_beneficiary');

		$trans = $this->db->trans_complete();

		return $trans;
	}

	public function get_calendar($year, $month)
	{
		$this->db->select('date, data');
		$this->db->from('tbl_calendar');
		$this->db->like('date',"$year-$month",'after');
		$query = $this->db->get();
		//from('tbl_calendar')
			//->like('date', '$year-$month', 'after')->get();


		return $query->result();	
		/*$cal_data = array();

		foreach($query->result() as $row)
		{
			$cal_data[substr($row->date,8,2)] = $row->data;
		}

		echo '$cal_data';*/
	} 

	public function generate ($year, $month)
	{
		$conf = array(
			'start_day' => 'monday',
			'show_next_prev' => true,
			'next_prev_url' => base_url() . 'index.php/master/index_calendar'
		);
		$conf['day_type'] = 'long';
		$conf['template'] = '
    {cal_cell_content}<span class="day_listing">{day}</span>&nbsp;&bull; {content}&nbsp;{/cal_cell_content}
    {cal_cell_content_today}<div class="today"><span class="day_listing">{day}</span>&bull; {content}</div>{/cal_cell_content_today}
    {cal_cell_no_content}<span class="day_listing">{day}</span>&nbsp;{/cal_cell_no_content}
    {cal_cell_no_content_today}<div class="today"><span class="day_listing">{day}</span></div>{/cal_cell_no_content_today}
		'; 

		$conf['template'] = '
	    {table_open}<table class="calendar">{/table_open}
	    {week_day_cell}<th class="day_header">{week_day}</th>{/week_day_cell}
	    {cal_cell_content}<span class="day_listing">{day}</span>&nbsp;&bull; {content}&nbsp;{/cal_cell_content}
	    {cal_cell_content_today}<div class="today"><span class="day_listing">{day}</span>&bull; {content}</div>{/cal_cell_content_today}
	    {cal_cell_no_content}<span class="day_listing">{day}</span>&nbsp;{/cal_cell_no_content}
	    {cal_cell_no_content_today}<div class="today"><span class="day_listing">{day}</span></div>{/cal_cell_no_content_today}
		'; 

		
		$this->load->library('calendar', $conf);

		$cal_data = $this->get_calendar($year, $month);

		return $this->calendar->generate($year, $month, $cal_data);
	}

}	