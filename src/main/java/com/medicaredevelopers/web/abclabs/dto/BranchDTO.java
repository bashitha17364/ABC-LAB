package com.medicaredevelopers.web.abclabs.dto;

public class BranchDTO {
    private String city;
    private String address;
    private String telephone;

    // Constructors, getters, and setters
    public BranchDTO() {}

    public BranchDTO(String city, String address, String telephone) {
        this.city = city;
        this.address = address;
        this.telephone = telephone;
    }

    // Getters and Setters
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}
