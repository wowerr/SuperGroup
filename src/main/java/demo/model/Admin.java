package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by Administrator on 2016/6/7.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Admin extends BaseModel {
    private Integer id;
    private String username;
    private String password;


}
