package ${pojoPackage};

/**
 * 类${className_Java}DO.java的实现描述：${tableComment}
 * 
 * @Author ${author}
 * @Date ${createDate}
 */
public class ${className_Java}DO {
    <#list tableCarrays as tableCarray>
    /**
     * ${tableCarray.comment}
     */
    private ${tableCarray.carrayType} ${tableCarray.carrayName_Java};
    </#list>

    public ${className_Java}DO() {
    }

    <#list tableCarrays as tableCarray>
    public ${tableCarray.carrayType} get${tableCarray.carrayName_d}(){
        return ${tableCarray.carrayName_Java};
    }

    public void set${tableCarray.carrayName_d}(${tableCarray.carrayType} ${tableCarray.carrayName_Java}){
        this.${tableCarray.carrayName_Java} = ${tableCarray.carrayName_Java};
    }
    </#list>
}