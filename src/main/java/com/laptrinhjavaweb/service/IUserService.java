package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface IUserService {

   List<UserDTO> findAll(Pageable pageable);

   Integer getTotalItem();

   UserDTO findByID(Long id);

   UserDTO save(UserDTO dto);

   void delete(long id);
}