package demo.service.impl;

import demo.dao.GenericDao;
import demo.model.Work;
import demo.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/6/13.
 *
 */
@Service
public class WorkServiceImpl extends GenericServiceImpl<Work,Integer> implements WorkService {
    @Override
    @Autowired
    @Qualifier("workDaoImpl")
    void setGenericDao(GenericDao<Work, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}
