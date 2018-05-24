package com.rnc.bracketology.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rnc.bracketology.models.Comment;
import com.rnc.bracketology.models.Post;
import com.rnc.bracketology.models.User;
import com.rnc.bracketology.services.PostService;
import com.rnc.bracketology.services.UserService;

@Controller
@RequestMapping("/wall")
public class PostController {
	
	@Autowired
	private PostService _pS;
	
	@Autowired
	private UserService _uS;
	
	@RequestMapping("")
	public String wall(@ModelAttribute("newPost") Post post,Model model,Principal principal,@ModelAttribute("newComment") Comment comment) {
		User user = _uS.findByUsername(principal.getName());
		user.setPassword(null);
		model.addAttribute("currentUser", user);
		model.addAttribute("posts", _pS.all());
		return "wall";
	}
	
	@PostMapping("/post")
	public String createPost(@Valid @ModelAttribute("newPost") Post post,@RequestParam("file") MultipartFile file,Principal principal){
		User user = _uS.findByUsername(principal.getName());
		
		if(file.isEmpty() && post.getMessage().equals("")) {
			return "redirect:/wall";
		}else if(!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
//				creating the directory to store file
				File dir = new File("src/main/resources/static/images");
				if(!dir.exists())
					dir.mkdir();
//				create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
//				adding it to my datebase
				post.setUser(user);
				post.setPicture(file.getOriginalFilename());
				_pS.create(post);
				return "redirect:/wall";
			}catch (Exception e) {
				return "redirect:/wall";
			}
		}else if(file.isEmpty() && !post.getMessage().equals("")) {
			post.setUser(user);
			_pS.create(post);
			return "redirect:/wall";
		}
		return "redirect:/wall";
	}
	
	
	

}
