package model;

public class BookTable {
    private int id; 
    private String name;
    private String phoneNumber;
    private String email;
    private String count;
    private String date;

   
    public BookTable() {
    }

    
    public BookTable(String name, String phoneNumber, String email, String count, String date) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.count = count;
        this.date = date;
    }

  
    public BookTable(int id, String name, String phoneNumber, String email, String count, String date) {
        this.id = id;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.count = count;
        this.date = date;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
