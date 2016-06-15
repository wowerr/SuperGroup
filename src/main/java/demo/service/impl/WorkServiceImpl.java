package demo.service.impl;

import demo.dao.GenericDao;
import demo.dao.StudentDao;
import demo.model.Student;
import demo.model.Work;
import demo.service.StudentService;
import demo.service.WorkService;
import demo.util.Encryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/6/7.
 */
@Service
public class WorkServiceImpl extends GenericServiceImpl<Work,Integer>  implements WorkService{
    @Override
    @Autowired
    @Qualifier("workDaoImpl")
    public void setGenericDao(GenericDao<Work, Integer> genericDao) {
        super.genericDao = genericDao;
    }

}
