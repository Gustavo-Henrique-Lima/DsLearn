package com.gustavonascimento.DsLearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gustavonascimento.DsLearn.entities.Deliver;
import com.gustavonascimento.DsLearn.entities.dto.DeliverRevisionDTO;
import com.gustavonascimento.DsLearn.repositories.DeliverRepository;

@Service
public class DeliverService {

	@Autowired
	private DeliverRepository repository;
	
	@Transactional
	public void saveResivision(Long id, DeliverRevisionDTO entity) {
		Deliver deliver = repository.getReferenceById(id);
		deliver.setStatus(entity.getStatus());
		deliver.setFeedback(entity.getFeedback());
		deliver.setCorrectCount(entity.getCorrectCount());
		repository.save(deliver);
	}
}
