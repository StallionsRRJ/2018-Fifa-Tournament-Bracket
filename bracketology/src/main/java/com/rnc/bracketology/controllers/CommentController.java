package com.rnc.bracketology.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rnc.bracketology.models.Comment;
import com.rnc.bracketology.models.Post;
import com.rnc.bracketology.models.User;
import com.rnc.bracketology.services.CommentService;
import com.rnc.bracketology.services.PostService;
import com.rnc.bracketology.services.UserService;

@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private CommentService _cS;
	
	@Autowired 
	private PostService _pS;
	
	@Autowired
	private UserService _uS;
	
	@RequestMapping("/add/{id}")
	public String addComment(@Valid @ModelAttribute("newComment") Comment comment,@PathVariable("id") Long id,Principal principal,@RequestParam("file2") MultipartFile file) {
		User user = _uS.findByUsername(principal.getName());
		Post post = _pS.findOne(id);
		if(file.isEmpty() && comment.getComment().equals("")) {
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
				comment.setUser(user);
				comment.setPost(post);
				comment.setPicture(file.getOriginalFilename());
				Comment newComment = comment;
				_cS.create(comment);
				return "redirect:/wall";
			}catch (Exception e) {
				return "redirect:/wall";
			}
		}else if(file.isEmpty() && !comment.getComment().equals("")) {
			comment.setUser(user);
			comment.setPost(post);
			Comment newComment = comment;
			_cS.create(newComment);
			return "redirect:/wall";
		}
		return "redirect:/wall";
	}
	
}
