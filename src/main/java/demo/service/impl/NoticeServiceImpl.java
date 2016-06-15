package demo.service.impl;

import demo.dao.GenericDao;
import demo.dao.NoticeDao;
import demo.model.Notice;
import demo.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/6/15.
 */
@Service
public class NoticeServiceImpl extends GenericServiceImpl<Notice,Integer> implements NoticeService {
    @Override
    @Autowired
    @Qualifier("noticeDaoImpl")
    void setGenericDao(GenericDao<Notice, Integer> genericDao) {
        super.genericDao = genericDao;
    }

}
