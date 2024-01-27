package com.gustavonascimento.DsLearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gustavonascimento.DsLearn.entities.dto.UserDTO;
import com.gustavonascimento.DsLearn.services.UserService;

@RestController
@RequestMapping(value = "/users")
public class UserResource {

	@Autowired
	private UserService service;
	
	@GetMapping(value = "/{id}")
	public ResponseEntity<UserDTO> findUserById(@PathVariable Long id){
		UserDTO entity = service.findById(id);
		return ResponseEntity.ok(entity);
	}
}