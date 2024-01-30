package com.gustavonascimento.DsLearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gustavonascimento.DsLearn.entities.Offer;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long>{

}