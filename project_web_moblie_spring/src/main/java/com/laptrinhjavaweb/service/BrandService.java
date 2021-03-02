package com.laptrinhjavaweb.service;



import com.laptrinhjavaweb.model.Brand;

import java.util.List;

public interface BrandService {
    public Brand findByNameBrand(String name);

    public List<Brand> getAllBrands();

    Brand getBrandById(Integer brandId);

    void deleteBrand(Brand brand);

    void addBrand(Brand brand);

    void editBrand(Brand brand);



//    void deleteBrand(Integer brandId);
}
