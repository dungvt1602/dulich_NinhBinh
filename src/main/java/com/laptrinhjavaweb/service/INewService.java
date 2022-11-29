package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.NewDTO;
import org.springframework.data.domain.Pageable;

public interface INewService {
	List<NewDTO> findAll(Pageable pageable);

	//tính tổng số trang new được thêm
	Integer getTotalItem();

}
