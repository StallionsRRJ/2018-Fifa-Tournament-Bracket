package com.rnc.bracketology.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Home")
public class MainController {
	
	@RequestMapping("")
	public String main() {
		System.out.println("hi");
		return "welcomePage";
	}
}
