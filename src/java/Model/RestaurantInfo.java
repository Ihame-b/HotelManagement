/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


public class RestaurantInfo {
    private String Id;
   private String Rname;
   private String Address;
   private String ZipCode;
   private String PhonneNumber;
   private String Website;
   private String Email;

    public RestaurantInfo() {
    }

    public RestaurantInfo(String Id, String Rname, String Address, String ZipCode, String PhonneNumber, String Website, String Email) {
        this.Id = Id;
        this.Rname = Rname;
        this.Address = Address;
        this.ZipCode = ZipCode;
        this.PhonneNumber = PhonneNumber;
        this.Website = Website;
        this.Email = Email;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getRname() {
        return Rname;
    }

    public void setRname(String Rname) {
        this.Rname = Rname;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getZipCode() {
        return ZipCode;
    }

    public void setZipCode(String ZipCode) {
        this.ZipCode = ZipCode;
    }

    public String getPhonneNumber() {
        return PhonneNumber;
    }

    public void setPhonneNumber(String PhonneNumber) {
        this.PhonneNumber = PhonneNumber;
    }

    public String getWebsite() {
        return Website;
    }

    public void setWebsite(String Website) {
        this.Website = Website;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
}
