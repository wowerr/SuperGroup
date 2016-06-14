package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * Created by Administrator on 2016/6/13.
 *
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Classes extends BaseModel {

    private Integer id;
    private String title;
    private String startDate;
    private String finishDate;
    private double cost;
    private String teacher;
    private String classState;
    //one to many
    private List<Student> students;


}
