package com.laptrinhjavaweb.model;

import com.laptrinhjavaweb.model.Brand;
import com.laptrinhjavaweb.model.Category;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoryId")
    private Category categoryId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "brandId")
    private Brand brandId;

    @Column(name = "name")
//    @NotEmpty(message = "Không được để trống")
    private String name;

    @Column(name = "code")
//    @NotEmpty(message = "Không được để trống")
    private String code;

    @Column(name = "price")
//    @NotEmpty(message = "không dược để trống")
    private Double price;

    @Column(name = "discount")
    private Double discount;

    @Column(name = "description")

    private String description;

    @Column(name = "unitBrief")
    private String uniBrief;


    @Column(name = "imgMain")
    @Transient
    private MultipartFile imgMain;
    @Column(name = "imgList")
    @Transient
    private List<MultipartFile> imgList;

    @Column(name = "quantity")
//    @NotEmpty(message = "Không được để trống")
    private int quantity;

    @Column(name = "activeFlag")
    private int activeFlag;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "createDate")
    private Date createDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "updateDate")
    private Date updateDate;

    public Product() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    public Brand getBrandId() {
        return brandId;
    }

    public void setBrandId(Brand brandId) {
        this.brandId = brandId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

//    public Double getDiscount() {
//        return discount;
//    }
//
//    public void setDiscount(Double discount) {
//        this.discount = discount;
//    }

    public String getUniBrief() {
        return uniBrief;
    }

    public void setUniBrief(String uniBrief) {
        this.uniBrief = uniBrief;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public MultipartFile getImgMain() {
        return imgMain;
    }

    public void setImgMain(MultipartFile imgMain) {
        this.imgMain = imgMain;
    }

    public List<MultipartFile> getImgList() {
        return imgList;
    }

    public void setImgList(List<MultipartFile> imgList) {
        this.imgList = imgList;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getActiveFlag() {
        return activeFlag;
    }

    public void setActiveFlag(int activeFlag) {
        this.activeFlag = activeFlag;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }
}
