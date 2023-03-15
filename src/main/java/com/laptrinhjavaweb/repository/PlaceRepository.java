package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.PlaceEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import java.util.List;

public interface PlaceRepository extends JpaRepository<PlaceEntity, Long> {

    @Query(value = "SELECT * FROM place ORDER BY modifieddate DESC LIMIT 2" , nativeQuery = true)
    List<PlaceEntity> findNewPlace();

//    @Query(value = "SELECT p FROM Place p JOIN p.users u GROUP BY p.id ORDER BY COUNT(u) DESC" , nativeQuery = true)
//    List<PlaceEntity> findTopPlacesWithMostUsers(Pageable pageable);
	
}
