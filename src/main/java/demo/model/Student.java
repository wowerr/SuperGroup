package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * Created by dell on 2016-6-13.
 */
public class Student implements Serializable {
    private Integer id;
    private String username;
    private String password;
    private Integer number;
    private String gender;
    private String origin;
    private String idNumber;
    private String tel;
    private String email;
    private String startDate;
    private String finishDate;
    private String studentState;
    private String classId;

    public Student() {
    }

    public Student(Integer id, String username, String password, Integer number, String gender, String origin, String idNumber, String tel, String email, String startDate, String finishDate, String studentState, String classId) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.number = number;
        this.gender = gender;
        this.origin = origin;
        this.idNumber = idNumber;
        this.tel = tel;
        this.email = email;
        this.startDate = startDate;
        this.finishDate = finishDate;
        this.studentState = studentState;
        this.classId = classId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(String finishDate) {
        this.finishDate = finishDate;
    }

    public String getStudentState() {
        return studentState;
    }

    public void setStudentState(String studentState) {
        this.studentState = studentState;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }
}
