package demo.service.impl;

import demo.dao.GenericDao;
import demo.dao.StudentDao;
import demo.model.Student;
import demo.service.StudentService;
import demo.util.Encryptor;
import org.jasypt.util.password.StrongPasswordEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/6/7.
 */
@Service
public class StudentServiceImpl extends GenericServiceImpl<Student,Integer>  implements StudentService{
    @Override
    @Autowired
    @Qualifier("studentDaoImpl")
    public void setGenericDao(GenericDao<Student, Integer> genericDao) {
        super.genericDao = genericDao;
    }

    @Override
    public Student login(Student student) {
        String plainPassword = student.getPassword();
        StudentDao studentDao = (StudentDao) super.genericDao;
        List<Student> students = studentDao.list("student.login", student.getUsername());
        if (students.size() == 1) {
            student = students.get(0);
            String encryptedPassword = student.getPassword();
            if (Encryptor.getEncryptor().checkPassword(plainPassword, encryptedPassword)) {
                student.setPassword(null);
                return student;
            }
        }
        return null;
    }

}
