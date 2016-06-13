package demo.service;

import demo.model.Student;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/6/7.
 */
public interface StudentService extends GenericService<Student,Integer> {
    Student login(HttpServletRequest request, Student student);
}
