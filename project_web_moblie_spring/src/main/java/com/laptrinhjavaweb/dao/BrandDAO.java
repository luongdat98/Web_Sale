package com.laptrinhjavaweb.dao;


import com.laptrinhjavaweb.model.Brand;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BrandDAO {

    public Brand findByNameBrand(String name);

    List<Brand> getAllBrands();

    Brand getBrandById(Integer brandId);

    void deleteBrand(Brand brand);

    void addBrandId(Brand brand);

    void editBrand(Brand brand);

//    void deleteBrand(Integer brandId);
}
