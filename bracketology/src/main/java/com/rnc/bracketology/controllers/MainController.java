package com.rnc.bracketology.controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/Home")
public class MainController {
	
	ObjectMapper mapper = new ObjectMapper();

	
	@RequestMapping("")
	public String main() {
		System.out.println("hi");
		return "welcomePage";
	}
	
	@PostMapping("bracketData")
	public String getData(@RequestParam("teamsData") String teamsData,@RequestParam("resultsData") String resultsData) throws JsonParseException, JsonMappingException, IOException {
//		Map<String, String> team = mydata;
		System.out.println(teamsData);
		List<Object> teams = mapper.readValue(teamsData, new TypeReference<List<Object>>(){});
		
		List<Object> results = mapper.readValue(resultsData, new TypeReference<List<Object>>(){});
		
//		Map<String,Object> map = mapper.readValue(mydata, Map.class);
		System.out.println(teams);
		System.out.println(results);
		return "redirect:/home";
	}
} 
