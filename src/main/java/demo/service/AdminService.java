package demo.service;

import demo.model.Admin;

/**
 * Created by Administrator on 2016/6/7.
 */
public interface AdminService extends GenericService<Admin,Integer> {
    Admin login(Admin admin);
}
