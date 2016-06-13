package demo.service.impl;

import demo.dao.AdminDao;
import demo.dao.GenericDao;
import demo.model.Admin;
import demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/6/7.
 */
@Service
public class AdminServiceImpl extends GenericServiceImpl<Admin,Integer>  implements AdminService{
    @Override
    @Autowired
    @Qualifier("adminDaoImpl")
    void setGenericDao(GenericDao<Admin, Integer> genericDao) {
        super.genericDao = genericDao;
    }



    @Override
    public Admin login(Admin admin) {

        AdminDao adminDao = (AdminDao) super.genericDao;
        List<Admin> admins = adminDao.list("admin.login", admin);
        if (admins.size()>0) {
            return admins.get(0);
        }
        return null;
    }
}
