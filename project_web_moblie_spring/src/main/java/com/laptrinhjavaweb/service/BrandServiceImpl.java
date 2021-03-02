package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.Brand;
import com.laptrinhjavaweb.dao.BrandDAO;
import com.laptrinhjavaweb.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service(value = "brandService")
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandDAO brandDAO;

    public BrandDAO getBrandRepository() {
        return brandDAO;
    }

    public void setBrandRepository(BrandDAO brandRepository) {
        this.brandDAO = brandRepository;
    }

    @Transactional
    public Brand findByNameBrand(String name) {
        return brandDAO.findByNameBrand(name);
    }


    @Transactional
    public List<Brand> getAllBrands() {
        return brandDAO.getAllBrands();
    }

    @Transactional
    public Brand getBrandById(Integer brandId) {
        return brandDAO.getBrandById(brandId);
    }

    @Transactional
    public void deleteBrand(Brand brand) {
        brand.setActiveFlag(0);
        brand.setStatus(0);
        this.brandDAO.deleteBrand(brand);

    }

    @Transactional
    public void addBrand(Brand brand) {

        brand.setCreateDate(new Timestamp(new Date(System.currentTimeMillis()).getTime()));
        brand.setUpdateDate(new Timestamp(new Date(System.currentTimeMillis()).getTime()));
        brand.setActiveFlag(1);
        brand.setStatus(1);
        brandDAO.addBrandId(brand);

    }

    @Transactional
    public void editBrand(Brand brand) {
        brand.setUpdateDate(new Timestamp(new Date(System.currentTimeMillis()).getTime()));
        brand.setActiveFlag(1);
        brand.setStatus(1);
//        brand.setUpdateDate(new Date());
        brandDAO.editBrand(brand);

    }

//    @Transactional
//    public void deleteBrand(Integer brandId) {
//
//        brandDAO.deleteBrand(brandId);
//
//
//    }
}
