package com.laptrinhjavaweb.service.impl;


import com.laptrinhjavaweb.dto.CommentDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.CommentRepository;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommentService implements ICommentService {

    @Autowired
    CommentRepository commentRepository;



    @Override
    public List<CommentDTO> findAllCommentPlacebyIdPlace(long idPlace) {
        return null;
    }
}
