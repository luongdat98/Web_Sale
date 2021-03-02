package com.laptrinhjavaweb.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "role")
public class Role {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;

    @Column(name = "roleName")
    private String roleName;

    @Column(name = "description")
    private String decription;

    @Column(name = "activeFlag")
    private Integer activeFlag;

    @Column(name = "createDate")
    private Date createDate;

    @Column(name = "updateDate")
    private Date updateDate;

    @ManyToMany(mappedBy = "listRole", cascade = CascadeType.ALL,fetch = FetchType.LAZY)
//    @JoinTable(name = "roleuser", joinColumns = {@JoinColumn(name = "userId")}, inverseJoinColumns = {@JoinColumn(name = "roleId")})
    private List<User> listUser = new ArrayList<>();

    public List<User> getListUser() {
        return listUser;
    }

    public void setListUser(List<User> listUser) {
        this.listUser = listUser;
    }

    public Role(Integer id, String roleName, String decription, Integer activeFlag) {
        this.id = id;
        this.roleName = roleName;
        this.decription = decription;
        this.activeFlag = activeFlag;
    }

    public Role(String roleName, String decription, Integer activeFlag) {
        this.roleName = roleName;
        this.decription = decription;
        this.activeFlag = activeFlag;
    }

    public Role() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
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




}
