package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlaceRepository extends JpaRepository<PlaceEntity, Long> {
	
}
