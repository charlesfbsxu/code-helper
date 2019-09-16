package ${pojoPackage};

/**
 * 类${className_Java}BeanUtil.java的实现描述：${tableComment}工具类
 * 
 * @Author ${author}
 * @Date ${createDate}
 */
public class ${className_Java}BeanUtil {

    private ${className_Java}BeanUtil(){
    }

    public static ${className_Java}DO ${className}BOToDO(${className_Java}BO srcObj) {
        if (srcObj == null) {
            return null;
        }
        ${className_Java}DO targetObj = new ${className_Java}DO();
        <#list tableCarrays as tableCarray>
        <#if tableCarray.carrayName_Java!="createTime"&&tableCarray.carrayName_Java!="updateTime">
        <#if tableCarray.carrayName_Java=="id">
        targetObj.set${tableCarray.carrayName_d}(srcObj.get${className_Java}Id());//${tableCarray.comment}
        <#else>
        targetObj.set${tableCarray.carrayName_d}(srcObj.get${tableCarray.carrayName_d}());//${tableCarray.comment}
        </#if>
        </#if>
        </#list>
        return targetObj;
    }

    public static ${className_Java}BO ${className}DOToBO(${className_Java}DO srcObj) {
        if (srcObj == null) {
            return null;
        }
        ${className_Java}BO targetObj = new ${className_Java}BO();
        <#list tableCarrays as tableCarray>
        <#if tableCarray.carrayName_Java!="createTime"&&tableCarray.carrayName_Java!="updateTime">
        <#if tableCarray.carrayName_Java=="id">
        targetObj.set${className_Java}Id(srcObj.get${tableCarray.carrayName_d}());//${tableCarray.comment}
        <#else>
        targetObj.set${tableCarray.carrayName_d}(srcObj.get${tableCarray.carrayName_d}());//${tableCarray.comment}
        </#if>
        </#if>
        </#list>
        return targetObj;
    }
}