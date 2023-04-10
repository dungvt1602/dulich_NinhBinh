package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.HotelEntity;
import com.laptrinhjavaweb.entity.HotelOrderEntity;
import com.laptrinhjavaweb.entity.UserEntity;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface IHotelOrderService {


	HotelOrderEntity addBill(long user_id , long place_id ,
								   LocalDate startDate, LocalDate endDate
			, String sdt , long sumPrice , long numberRoom);

	HotelOrderEntity saveBillWhenSuccess(long billId);

	HotelOrderEntity saveBillWhenFail(long id);

	List<HotelOrderEntity> danhsachHoaDonHetHan(LocalDate Date);

	HotelOrderEntity updateBill(HotelOrderEntity hotelOrder);

}
