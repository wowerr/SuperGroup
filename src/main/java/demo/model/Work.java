package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Created by dell on 2016-6-15.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Work extends BaseModel{
    private Integer id;
    private String workUnit;
    private String position;
    private Integer studentId;
}
