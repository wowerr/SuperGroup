package demo.dao.impl;

import demo.dao.AdminDao;
import demo.dao.StudentDao;
import demo.model.Admin;
import demo.model.Student;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/6/7.
 */
@Repository
public class StudentDaoImpl extends GenericDaoImpl<Student,Integer> implements StudentDao {
}
