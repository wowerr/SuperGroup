package demo.service.impl;

import demo.dao.GenericDao;
import demo.model.Classes;
import demo.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/6/13.
 */
@Service
public class ClassesServiceImpl extends GenericServiceImpl<Classes,Integer> implements ClassesService {
    @Override
    @Autowired
    @Qualifier("classesDaoImpl")
    void setGenericDao(GenericDao<Classes, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}
