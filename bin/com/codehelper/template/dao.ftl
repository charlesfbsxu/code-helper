package ${daoPackage};

import com.uhu.dao.model.${className_Java}DO;
import org.apache.ibatis.annotations.Mapper;

/**
 * ${tableComment} DAO接口
 *
 * @Author ${author}
 * @Date ${createDate}
 */
@Mapper
public interface ${className_Java}Dao{

    /**
     *
     * 方法insert的功能描述：新增${tableComment}
     *
     * @param record
     * @return int
     * <PRE>
     * author ${author} 
     * Date ${createDate}
     * </PRE>
     */
    int insert(${className_Java}DO record);

    /**
     *
     * 方法deleteById的功能描述：根据Id删除${tableComment}
     *
     * @param id
     * @return int
     * <PRE>
     * author ${author} 
     * Date ${createDate}
     * </PRE>
     */
    int deleteById(Long id);

    /**
     *
     * 方法updateById的功能描述：根据Id更新${tableComment}
     *
     * @param record
     * @return int
     * <PRE>
     * author ${author} 
     * Date ${createDate}
     * </PRE>
     */
    int updateById(${className_Java}DO record);

    /**
     *
     * 方法findById的功能描述：根据Id查询${tableComment}
     *
     * @param id
     * @return ${className_Java}DO
     * <PRE>
     * author ${author} 
     * Date ${createDate}
     * </PRE>
     */
    ${className_Java}DO findById(Long id);


     /**
     *
     * 方法findByCondition的功能描述：根据${tableComment}查询${tableComment}
     *
     * @param record
     * @return ${className_Java}DO
     *
     <PRE>
          * author ${author}
          * Date ${createDate}
          * </PRE>
     */
     List<${className_Java}DO> findByCondition(${className_Java}DO record);
}