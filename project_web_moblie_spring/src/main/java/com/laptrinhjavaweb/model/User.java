package com.laptrinhjavaweb.model;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "users")
public class User implements Serializable {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;


    @Column(name = "username" )
    @Size(min = 2, max = 30, message = "username phải ít nhất 2 kí tự")
    @NotEmpty(message = "Không được để trống username !")
    private String username;

    @Column(name = "password")
    @NotNull(message = "không đượcs để trống password")
    @Size(min = 6, max = 32, message ="password phải ít nhất 6 kí tự" )
    private String password;

    @Transient
//    @NotEmpty(message = "Không được bỏ trống")
    private String passwordConfirm;


    @Column(name = "email")
    @NotEmpty(message = "không được bỏ trống")
    @Email(message = "không đúng định dạng email! vui lòng nhập lại email")
    private String email;


    @Column(name = "name")
    @NotEmpty(message = "không được bỏ trống")
    private String name;

    @Column(name = "activeFlag")
    private Integer activeFlag;

    @Column(name = "createDate")
    private Date creaDate;

    @Column(name = "updateDate")
    private Date updateDate;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "roleuser", joinColumns = {@JoinColumn(name = "userId")}, inverseJoinColumns = {@JoinColumn(name = "roleId")})
    private List<Role> listRole= new ArrayList<>();

    public List<Role> getListRole() {
        return listRole;
    }

    public void setListRole(ArrayList<Role> listRole) {
        this.listRole = listRole;
    }

    public void addRole(Role role){
        getListRole().add(role);
    }

    public User(String username, String password, String email, String name, Integer activeFlag, List<Role> listRole) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
        this.activeFlag = activeFlag;
        this.listRole = listRole;
    }

    public User() {
    }

    public User(String username, String password, String passwordConfirm, String email, String name, Integer activeFlag) {
        this.username = username;
        this.password = password;
        this.passwordConfirm = passwordConfirm;
        this.email = email;
        this.name = name;
        this.activeFlag = activeFlag;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String password, String email, String name) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getActiveFlag() {
        return activeFlag;
    }

    public void setActiveFlag(Integer activeFlag) {
        this.activeFlag = activeFlag;
    }

    public Date getCreaDate() {
        return creaDate;
    }

    public void setCreaDate(Date creaDate) {
        this.creaDate = creaDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }




    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
