package demo.model;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/6/13.
 *
 */
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

    public Classes() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getClassState() {
        return classState;
    }

    public void setClassState(String classState) {
        this.classState = classState;
    }

    @Override
    public String toString() {
        return "Classes{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", startDate=" + startDate +
                ", finishDate=" + finishDate +
                ", cost=" + cost +
                ", teacher='" + teacher + '\'' +
                ", classState='" + classState + '\'' +
                '}';
    }
}
