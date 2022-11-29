package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.repository.NewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.model.NewModel;
import com.laptrinhjavaweb.service.INewService;

@Service
public class NewService implements INewService {


	@Autowired
	NewRepository newRepository;

	@Override
	public List<NewDTO> findAll(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> newEntities = newRepository.findAll(pageable).getContent();
		for(NewEntity item : newEntities)
		{
			NewDTO newModel = new NewDTO();
			newModel.setTitle(item.getTitle());
			newModel.setShortDescription(item.getShortDescription());
			models.add(newModel);
		}
 		return models;
	}

	@Override
	public Integer getTotalItem() {
		return (int) newRepository.count();
	}


}
