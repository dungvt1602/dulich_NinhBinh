package com.laptrinhjavaweb.service;

import java.util.List;


import com.laptrinhjavaweb.dto.PlaceDTO;
import org.springframework.data.domain.Pageable;

public interface IPlaceService {
    List<PlaceDTO> findAll(Pageable pageable);

    //tính tổng số trang new được thêm
    Integer getTotalItem();

    PlaceDTO findbyID(Long id);

    PlaceDTO insert(PlaceDTO dto);

    PlaceDTO update(PlaceDTO dto);

    PlaceDTO save(PlaceDTO dto);

    void deletePlace(long id);
}