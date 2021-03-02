package com.laptrinhjavaweb.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "invoice")
public class Invoice {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "userId")
    private Users users;

    @Column(name = "name")
    private String name;
    @Column(name = "phoneNumber")
    private String phoneNumber;
    @Column(name = "address")
    private String address;
    @Column(name = "payment")
    private Integer payment;
    @Column(name = "quantity")
    private Integer quantity;
    @Column(name = "amount")
    private Double amount;
    @Column(name = "status")
    private Integer status;
    @Column(name = "activeFlag")
    private Integer activeFlag;
    @Column(name = "createDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate;
    @Column(name = "updateDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateDate;

    @OneToMany(mappedBy = "invoice", fetch = FetchType.LAZY)
    private List<InvoiceDetail> detailList = new ArrayList<>();

    public Invoice() {
    }

    public Invoice(Integer id, Users users, String name, String phoneNumber, String address, Integer payment, Integer quantity, Double amount, Integer status, Integer activeFlag, Date createDate, Date updateDate) {
        this.id = id;
        this.users = users;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.payment = payment;
        this.quantity = quantity;
        this.amount = amount;
        this.status = status;
        this.activeFlag = activeFlag;
        this.createDate = createDate;
        this.updateDate = updateDate;
    }

    public Invoice(Integer id, Users users, String name, String phoneNumber, String address, Integer payment, Integer quantity, Double amount, Integer status, Integer activeFlag, Date createDate, Date updateDate, List<InvoiceDetail> detailList) {
        this.id = id;
        this.users = users;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.payment = payment;
        this.quantity = quantity;
        this.amount = amount;
        this.status = status;
        this.activeFlag = activeFlag;
        this.createDate = createDate;
        this.updateDate = updateDate;
        this.detailList = detailList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getPayment() {
        return payment;
    }

    public void setPayment(Integer payment) {
        this.payment = payment;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getActiveFlag() {
        return activeFlag;
    }

    public void setActiveFlag(Integer activeFlag) {
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

    public List<InvoiceDetail> getDetailList() {
        return detailList;
    }

    public void setDetailList(List<InvoiceDetail> detailList) {
        this.detailList = detailList;
    }
}
