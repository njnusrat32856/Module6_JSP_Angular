
package model;

public class Employee {

    private int id;
    private String name;
    private String email;
    private String address;
    private String mobile;
    private String dept;

    public Employee() {
    }

    public Employee(int id, String name, String email, String address, String mobile, String dept) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
        this.mobile = mobile;
        this.dept = dept;
    }

    public Employee(String name, String email, String address, String mobile, String dept) {
        this.name = name;
        this.email = email;
        this.address = address;
        this.mobile = mobile;
        this.dept = dept;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
    
    
}
