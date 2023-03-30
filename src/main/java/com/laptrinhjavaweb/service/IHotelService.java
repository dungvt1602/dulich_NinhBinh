package com.laptrinhjavaweb.service;


import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.repository.HotelRepository;

import java.util.List;

public interface IHotelService {
     List<HotelEntity> findAllHotel();

     HotelEntity findHotelById(long id);
}
