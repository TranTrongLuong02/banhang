package com.example.service;

import java.util.List;
import java.util.Optional;

import com.example.model.ImageProduct;

public interface ImageProductService {

	Optional<ImageProduct> saveOrUpdate(ImageProduct entity);

	void deleteByIdAndProductId(String id, String productId);
	
	void deleteByProductId(String productId);
	
	List<ImageProduct> findAllByProductId(String id);

}
