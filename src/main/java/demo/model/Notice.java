package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by Administrator on 2016/6/15.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Notice extends BaseModel {
    private Integer id;
    private String notice;
    private Integer classId;
}
