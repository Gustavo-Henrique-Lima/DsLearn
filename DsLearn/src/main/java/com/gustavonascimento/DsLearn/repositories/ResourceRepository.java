package com.gustavonascimento.DsLearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gustavonascimento.DsLearn.entities.Resource;

@Repository
public interface ResourceRepository extends JpaRepository<Resource, Long>{

}