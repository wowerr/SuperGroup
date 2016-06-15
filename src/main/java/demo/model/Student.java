package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * Created by dell on 2016-6-13.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Student extends BaseModel {
    private Integer id;
    private String username;
    private String password;
    private Integer number;
    private String gender;
    private String idNumber;
    private String tel;
    private String email;
    private String startDate;
    private String finishDate;
    private String studentState;
    private Integer classId;
    //many to one
    private Classes classes;


}
