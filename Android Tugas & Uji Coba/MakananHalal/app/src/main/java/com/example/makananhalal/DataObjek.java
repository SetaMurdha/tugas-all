package com.example.makananhalal;

public class DataObjek {
    String idMakanan="", NamaMakanan="", MasaTahan="";
    public DataObjek(String idMakanan, String NamaMakanan, String MasaTahan){
        this.idMakanan = idMakanan;
        this.NamaMakanan = NamaMakanan;
        this.MasaTahan = MasaTahan;
    }

    public String getIdMakanan() {
        return idMakanan;
    }

    public String getNamaMakanan() {
        return NamaMakanan;
    }

    public String getMasaTahan() {
        return MasaTahan;
    }
}
