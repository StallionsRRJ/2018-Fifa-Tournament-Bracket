package com.rnc.bracketology.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rnc.bracketology.models.Comment;
import com.rnc.bracketology.repositories.CommentRepo;

@Service
public class CommentService {
	
	@Autowired 
	private CommentRepo _cS;
	
	public ArrayList<Comment> findAll(){
		return _cS.findAll();
	}
	
	public Comment create(Comment comment) {
		return _cS.save(comment);
	}
	
	public Comment findOne(long id) {
		return _cS.findOne(id);
	}
	
	public void delete(long id) {
		_cS.delete(id);
	}
	
	

}
