<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
		if($this->session->userdata('logged_in') == FALSE)
		{
			$this->session->set_flashdata('no_access', 'Sorry, you are not logged in');
			
			redirect('user/index');
		}
		
	}

	public function index_employee()
	{
		// Get record count
	 	$this->load->library('pagination');

	 	$total_rows = $this->db->count_all('tbl_employees');
	 	$limit = 5;

	 	$start = $this->uri->segment(3);

	 	$this->db->order_by('name','asc');
	 	$this->db->limit($limit, $start);
	 	//$keyword    =   $this->input->post('keyword');
	 	//$this->db->like('name', $keyword);

	 	$this->db->select("CONCAT(tbl_employees.last_name, ', ', tbl_employees.first_name , ' ', tbl_employees.middle_name) AS name,tbl_employees.id as id, tbl_employees.employee_number as employee_number,tbl_employees.last_name as last_name, branches.code as branch_code, branches.name as branch_name, tbl_employees.date_hired as hired_date, tbl_employees.salary as salary, company.name as company_name, department.name as dept_name");
		$this->db->from('tbl_employees');
		$this->db->join('branches', 'tbl_employees.branch_id = branches.id');
		$this->db->join('company', 'tbl_employees.company_id = company.id');
		$this->db->join('department', 'tbl_employees.department_id = department.id');

	  $query = $this->db->get();
	  $data['employee'] = $query->result();

	  $config['base_url']   = 'http://it2-pc/nhfcpayrollsystem/index.php/master/index_employee';
	  $config['total_rows'] = $total_rows;
	  $config['per_page']   = $limit;

	  $config['full_tag_open']    = "<ul class='pagination'>";
		$config['full_tag_close']   = "</ul>";
		$config['num_tag_open']     = "<li>";
		$config['num_tag_close']    = "</li>";
		$config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
		$config['next_tag_open']    = "<li>";
		$config['next_tagl_close']  = "</li>";
		$config['prev_tag_open']    = "<li>";
	  $config['prev_tagl_close']  = "</li>";
		$config['first_tag_open']   = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_tag_open']    = "<li>";
		$config['last_tagl_close']  = "</li>";

	  
	  $this->pagination->initialize($config);	
	  $data['main_content'] = 'master/employee/index';
		$this->load->view('layouts/main', $data);		
	}

	public function add_employee()
	{
		$this->form_validation->set_rules('employee_number','Employee Number','required|trim');
		$this->form_validation->set_rules('first_name','Firstname','required|trim');
		$this->form_validation->set_rules('last_name','Lastname','required|trim');
		$this->form_validation->set_rules('registered_address','Registered Address','required|trim');
		$this->form_validation->set_rules('birthdate','Birthdate','required|trim');
		$this->form_validation->set_rules('age','Age','required|trim');
		$this->form_validation->set_rules('contact_no','Contact Number','required|trim');
		$this->form_validation->set_rules('sss_no','SSS Number','required|trim');
		$this->form_validation->set_rules('pagibig_no','Pagibig Number','required|trim');
		$this->form_validation->set_rules('phil_no','Philhealth Number','required|trim');
		$this->form_validation->set_rules('salary','Salary','required|trim');
		$this->form_validation->set_rules('tax_exemption','Tax Exemption','required|trim');
		$this->form_validation->set_rules('company','Company','required|trim');
		$this->form_validation->set_rules('branches','Branch','required|trim');
		$this->form_validation->set_rules('department','Department','required|trim');
		$this->form_validation->set_rules('date_hired','Date Hired','required|trim');

		if($this->form_validation->run() == FALSE)
		{
			$data['main_content'] = 'master/employee/add';
			$data['branches'] = $this->master_model->get_branches();
			$data['department'] = $this->master_model->get_department();
			$data['company'] = $this->master_model->get_company();
			$this->load->view('layouts/main', $data);
		}	
		else
		{
			if($this->master_model->add_employee())
			{
				$this->session->set_flashdata('add_emp','Employee Successfully Added!');
				redirect('master/add_employee');
			}
		}
		
	}

	public function delete_employee($id)
	{
		if($this->master_model->delete_employee($id))
		{
			$this->session->set_flashdata('delete_emp', 'Employee Successfully Deleted!');
			redirect('master/index_employee');
		}
	}

	public function index_user()
	{
		$data['main_content'] = 'master/user/index';
		$this->load->view('layouts/main', $data);
	}

	public function index_calendar()
	{
		$data['main_content'] = 'master/calendar/index';
		//$data['calendar'] = $this->master_model->get_calendar($year, $month);
		$this->load->view('layouts/main', $data);
		//$this->load->view('master/calendar/index');

	

	}

}	