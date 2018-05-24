package com.rnc.bracketology.repositories;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rnc.bracketology.models.Post;

@Repository
public interface PostRepo extends CrudRepository<Post, Long> {
	ArrayList<Post> findAll();

}
