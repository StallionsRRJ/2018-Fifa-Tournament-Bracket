package com.rnc.bracketology.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rnc.bracketology.models.Post;
import com.rnc.bracketology.repositories.PostRepo;

@Service
public class PostService {
	
	@Autowired
	private PostRepo _pR;
	
	public ArrayList<Post> all(){
		return _pR.findAll();
	}
	
	public Post findOne(long id) {
		return _pR.findOne(id);
	}
	
	public Post create(Post post) {
		return _pR.save(post);
	}
	
	public Post update(Post post) {
		return _pR.save(post);
	}
	
	public void delete(long id) {
		_pR.delete(id);
	}

}
