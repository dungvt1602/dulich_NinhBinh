package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.PlaceEntity;
import com.laptrinhjavaweb.repository.HotelRepository;
import com.laptrinhjavaweb.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class HotelService implements IHotelService {

    @Autowired
    private HotelRepository hotelRepository;

    @Override
    public List<HotelEntity> findAllHotel() {
        List<HotelEntity> hotels = new ArrayList<>();
        hotels = hotelRepository.findAll();
        return hotels;
    }

    @Override
    public HotelEntity findHotelById(long id) {
        HotelEntity hotel = hotelRepository.findOne(id);
        return hotel;
    }

    @Override
    @Transactional
    public HotelEntity updateHotel(HotelEntity hotel) {
        HotelEntity newHotel = hotelRepository.save(hotel);
        return hotel;
    }
}
