package com.laptrinhjavaweb.service;

import java.util.List;


import com.laptrinhjavaweb.dto.PlaceDTO;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

public interface IPlaceService {
    List<PlaceDTO> findAll(Pageable pageable);

    //tính tổng số trang new được thêm
    Integer getTotalItem();

    PlaceDTO findbyID(Long id);

    PlaceDTO insert(PlaceDTO dto);

    Integer coutLike(long id);

    PlaceDTO update(PlaceDTO dto);

    PlaceDTO save(PlaceDTO dto);

    void like(long id);

    List<PlaceDTO> findNewPlace();

    void UnLike(long id);

    boolean checkLike(long id);

    void deletePlace(long id);

    List<PlaceDTO> findAllPlace();


}