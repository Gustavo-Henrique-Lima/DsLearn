package com.gustavonascimento.DsLearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gustavonascimento.DsLearn.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{

}