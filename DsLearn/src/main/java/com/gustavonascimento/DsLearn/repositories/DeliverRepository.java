package com.gustavonascimento.DsLearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gustavonascimento.DsLearn.entities.Deliver;

@Repository
public interface DeliverRepository extends JpaRepository<Deliver, Long>{

}