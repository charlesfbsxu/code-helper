package ${pojoPackage};

/**
 * 类${className_Java}BO.java的实现描述：${tableComment}
 * 
 * @Author ${author}
 * @Date ${createDate}
 */
public class ${className_Java}BO {
    <#list tableCarrays as tableCarray>
    <#if tableCarray.carrayName_Java!="createTime"&&tableCarray.carrayName_Java!="updateTime">
    /**
     * ${tableCarray.comment}
     */
    <#if tableCarray.carrayName_Java=="id">
    private ${tableCarray.carrayType} ${className}Id;
    <#else>
    private ${tableCarray.carrayType} ${tableCarray.carrayName_Java};
    </#if>
    </#if>
    </#list>

    public ${className_Java}BO() {
    }

    <#list tableCarrays as tableCarray>
    <#if tableCarray.carrayName_Java!="createTime"&&tableCarray.carrayName_Java!="updateTime">
    <#if tableCarray.carrayName_Java=="id">
    public ${tableCarray.carrayType} get${className_Java}Id(){
        return ${className}Id;
    }

    public void set${className_Java}Id(${tableCarray.carrayType} ${className}Id){
        this.${className}Id = ${className}Id;
    }
    <#else>
    public ${tableCarray.carrayType} get${tableCarray.carrayName_d}(){
        return ${tableCarray.carrayName_Java};
    }

    public void set${tableCarray.carrayName_d}(${tableCarray.carrayType} ${tableCarray.carrayName_Java}){
        this.${tableCarray.carrayName_Java} = ${tableCarray.carrayName_Java};
    }
    </#if>
    </#if>
    </#list>
}