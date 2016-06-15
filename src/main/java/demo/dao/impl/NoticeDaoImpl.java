package demo.dao.impl;

import demo.dao.NoticeDao;
import demo.model.Notice;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/6/15.
 */
@Repository
public class NoticeDaoImpl extends GenericDaoImpl<Notice,Integer> implements NoticeDao {
}
