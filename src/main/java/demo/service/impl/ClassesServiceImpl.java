package demo.service.impl;

import demo.dao.GenericDao;
import demo.model.Classes;
import demo.service.ClassesService;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/6/13.
 */
@Service
public class ClassesServiceImpl extends GenericServiceImpl<Classes,Integer> implements ClassesService {
    @Override
    void setGenericDao(GenericDao<Classes, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}
