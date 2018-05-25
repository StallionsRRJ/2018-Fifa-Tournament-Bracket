package com.rnc.bracketology.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Post {
	@Id
	@GeneratedValue
	private long id;
	
	private String picture;
	
	@Column(length=5000)
	private String message;
	
	private String type;
	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date createdAt;
	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date updatedAt;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;
	
	@OneToMany(mappedBy="post", fetch = FetchType.LAZY)
	private List<Comment> comments;
	
//	many to many with User
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(
        name = "likes", 
        joinColumns = @JoinColumn(name = "post_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<User> likes;
	
	@PrePersist
	public void onCreate(){this.createdAt = new Date();}
	@PreUpdate
	public void onUpdate(){this.updatedAt = new Date();}
	
	public Post() {
		this.createdAt = new Date();
		this.updatedAt = new Date();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public List<User> getLikes() {
		return likes;
	}
	public void setLikes(List<User> likes) {
		this.likes = likes;
	}
	
	
	
	

}
