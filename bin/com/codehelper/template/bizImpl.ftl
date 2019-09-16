package ${bizPackage};

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${bizPackage}.${className_Java}Service;
import ${daoPackage}.${className_Java}DAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * ${tableComment} ServiceImpl实现类
 * 
 * @Author ${author}
 * @Date ${createDate}
 */
@Service
public class ${className_Java}ServiceImpl implements ${className_Java}Service {

    private static final Logger       LOG = LoggerFactory.getLogger(${className_Java}ServiceImpl.class);

    @Autowired
    private ${className_Java}Dao ${className}Dao;
}