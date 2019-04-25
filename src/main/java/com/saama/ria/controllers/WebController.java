package com.saama.ria.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller 
public class WebController {


	@RequestMapping(value ="/index", method = RequestMethod.GET)
	public String index() throws Exception {	
		System.err.println("Welcome");
		return "index";
		
	}


	@RequestMapping("/")
	public String homePage(Model model) {
		return "index";
	}

	@RequestMapping("/404")
	public String notFoundPage() {
		return "404";
	}
}
