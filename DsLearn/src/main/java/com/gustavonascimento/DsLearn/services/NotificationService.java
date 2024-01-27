package com.gustavonascimento.DsLearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gustavonascimento.DsLearn.entities.Notification;
import com.gustavonascimento.DsLearn.entities.User;
import com.gustavonascimento.DsLearn.entities.dto.NotificationDTO;
import com.gustavonascimento.DsLearn.repositories.NotificationRepository;

@Service
public class NotificationService {

	@Autowired
	private NotificationRepository repository;
	
	@Autowired
	private AuthService authService;
	
	@Transactional(readOnly = true)
	public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable){
		User user = authService.authenticated();
		Page<Notification> page = repository.findByUser(user, pageable);
		return page.map(notification->new NotificationDTO(notification));
	}
}
