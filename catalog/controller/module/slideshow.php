<?php
class ControllerModuleSlideshow extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['button_view'] = $this->language->get('button_view');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		// print_r($results);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'titlered' => $result['titlered'],
					'titlesl' => $result['titlesl'],
					'link'  => $result['link'],
					'sort_order' =>$result['sort_order'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']),
					'left'  => $result['left']
				);
			}
		}

		// print_r($data['banners']);

		$data['module'] = $module++;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshow.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/slideshow.tpl', $data);
		} else {
			return $this->load->view('default/template/module/slideshow.tpl', $data);
		}
	}
}
