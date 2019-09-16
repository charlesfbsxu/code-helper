<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd" >
<mapper namespace="com.uhu.dao.${className_Java}Dao">
	<resultMap id="BaseResultMap" type="com.uhu.dao.model.${className_Java}DO">
	<#list tableCarrays as tableCarray>
		<result column="${tableCarray.carrayName}" property="${tableCarray.carrayName_Java}" />
	</#list>
	</resultMap>
	
	<parameterMap id="${className_Java}DO" type="com.uhu.dao.model.${className_Java}DO"/>
	
	<sql id="Base_Column_List">
		id,${stringCarrayNames3}
	</sql>
	
	<insert id="insert" parameterMap="${className_Java}DO" useGeneratedKeys="true" keyProperty="id">
		INSERT INTO ${className_x} (
			${stringCarrayNames3}
		)
		VALUES (
			${stringCarrayNames4}
		)
	</insert>
	
	<delete id="deleteById" parameterType="java.lang.Long">
		DELETE FROM ${className_x} WHERE id = ${prefix}id}
	</delete>
	
	<update id="updateById" parameterMap="${className_Java}DO">
        UPDATE ${className_x} SET 
        <#list tableCarrays as tableCarray>
        	<#if tableCarray.carrayName!="id"&&tableCarray.carrayName!="createTime"&&tableCarray.carrayName!="updateTime">
	        	<if test="${tableCarray.carrayName_Java}!=null">
					${tableCarray.carrayName} = ${prefix}${tableCarray.carrayName_Java}},
				</if>
			</#if>
		</#list>
        WHERE id = ${prefix}id}        		
	</update>
	
	<select id="findById" resultMap="BaseResultMap" parameterType="java.lang.Long">
		SELECT
		<include refid="Base_Column_List" />
		FROM ${className_x}
		WHERE id = ${prefix}id}
	</select>
	
	<select id="findByCondition" resultMap="BaseResultMap" parameterMap="${className_Java}DO">
		SELECT
		<include refid="Base_Column_List" />
		FROM ${className_x}
		<include refid="whereCondition" />
	</select>
	
	<sql id="whereCondition">
		<trim prefix="WHERE" prefixOverrides="AND|OR">
			<#list tableCarrays as tableCarray>
			<if test="${tableCarray.carrayName_Java}!=null">
				and ${tableCarray.carrayName} = ${prefix}${tableCarray.carrayName_Java}}
			</if>
			</#list>
		</trim>
	</sql>
</mapper>