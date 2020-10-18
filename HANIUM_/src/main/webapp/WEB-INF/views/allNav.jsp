<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul>
<div class="masthead">
        <h3 class="text-muted">국가기반시설 정보보안 관리체계 프로그램</h3>
        <nav>
          <ul class="nav nav-justified">
            <li class="active"><a href="<%=request.getContextPath()%>/home">Home</a></li>
            <li><a href="<%=request.getContextPath()%>/system/list">산업제어시스템</a></li>
            <li><a href="<%=request.getContextPath()%>/DA/list">디지털자산</a></li>
            <li><a href="<%=request.getContextPath()%>/inspection/list">기술적 보안조치</a></li>
            <li><a href="<%=request.getContextPath()%>/security/list">기술적 보안성 평가</a></li>
            <li><a href="<%=request.getContextPath()%>/report/list">부적합 보고서</a></li>

          </ul>
        </nav>
      </div>
</ul>