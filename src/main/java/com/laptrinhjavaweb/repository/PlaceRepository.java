package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PlaceRepository extends JpaRepository<PlaceEntity, Long> {

    @Query(value = "SELECT * FROM place ORDER BY modifieddate DESC LIMIT 2" , nativeQuery = true)
    List<PlaceEntity> findNewPlace();
	
}
