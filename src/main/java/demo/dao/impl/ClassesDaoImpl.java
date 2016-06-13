package demo.dao.impl;

import demo.dao.ClassesDao;
import demo.model.Classes;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/6/13.
 */
@Repository
public class ClassesDaoImpl extends GenericDaoImpl<Classes, Integer> implements ClassesDao {

}
