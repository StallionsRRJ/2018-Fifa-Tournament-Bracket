package com.rnc.bracketology.repositories;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rnc.bracketology.models.Comment;

@Repository
public interface CommentRepo extends CrudRepository<Comment, Long> {
	ArrayList<Comment> findAll();
}
