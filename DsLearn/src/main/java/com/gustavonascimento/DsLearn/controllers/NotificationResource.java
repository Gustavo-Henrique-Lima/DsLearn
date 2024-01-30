package com.gustavonascimento.DsLearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gustavonascimento.DsLearn.entities.dto.NotificationDTO;
import com.gustavonascimento.DsLearn.services.NotificationService;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {

	@Autowired
	private NotificationService service;
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_STUDENT')")
	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> notificationsForCurrentUser(Pageable pageable){
		Page<NotificationDTO> page = service.notificationsForCurrentUser(pageable);
		return ResponseEntity.ok(page);
	}
}