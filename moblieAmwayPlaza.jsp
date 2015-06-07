<%@ page trimDirectiveWhitespaces="true" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/mobile/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="plaza" tagdir="/WEB-INF/tags/mobile/pb/plaza" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<template:page pageTitle="${pageTitle}" pageType="${pageType}" pageGroup="${pageGroup}">

    <!-- container -->
    <div id="pbContainer">
        <div id="pageLocation">
            <!-- breadcrumb component area -->
            <cms:pageSlot position="Breadcrumb" var="breadcrumb">
                <cms:component component="${breadcrumb}"/>
            </cms:pageSlot>
            <!-- //breadcrumb component area -->
            <!-- lnb component area -->
            <cms:pageSlot position="Lnb" var="lnb">
                <cms:component component="${lnb}"/>
            </cms:pageSlot>
            <!-- //lnb component area -->   
        </div>
        <!-- content -->
        <section id="pbContent">
            
            <div class="hWrap bgNone">
                <h1 id="plazaTitle">분당 ABC (암웨이 브랜드 체험센터)</h1>
                <div class="floatR">
                    <plaza:selectStore listPointOfServiceData="${listPointOfServiceData }"/>
                </div>
            </div>

            <c:forEach items="${listPointOfServiceData}" var="store" varStatus="status" >
                <!-- 썸네일 이미지 -->
			    <plaza:galleryBox store="${store}" tagClass="${store.name}" index="${status.index}"/>
			    <!-- //썸네일 이미지 -->
			    
			    <!-- 연락처 및 주소 -->
		        <plaza:addressInfo store="${store}" tagClass="${store.name}"/>
		        <plaza:map store="${store}" tagClass="${store.name}"/>        
			    <!-- //연락처 및 주소 -->
		        
		        <!-- 교통안내 -->
		        <plaza:trafficGuide store="${store}" tagClass="${store.name}"/>
		        <!-- 교통안내 -->
			</c:forEach>
            
        </section>
        <!-- //content -->
    </div>

</template:page>

