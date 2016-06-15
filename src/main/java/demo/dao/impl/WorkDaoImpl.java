package demo.dao.impl;

import demo.dao.WorkDao;
import demo.model.Work;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/6/7.
 *
 */
@Repository
public class WorkDaoImpl extends GenericDaoImpl<Work,Integer> implements WorkDao {
}
