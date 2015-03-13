<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="js/conSearch.js"></script>
<script src="js/jquery.watermarkinput.js" ></script>

</head>
<body>

	<div class="conSearch" ng-app="conSearchApp" ng-controller="searchController">
        <h3>Searching for: {{searchText}}</h3>
        <h3>Start Date: {{startDate}}</h3>
        <h3>End Date: {{endDate}}</h3>
        <h3>Keywords: {{keywords}}</h3>
        <p class="searchTitle">Search for Conventions:</p>
        <form name="conSearch" action="" method="post">
            <input type="text" name="conSearchText" id="conSearchText" ng-change="changeSearch()" ng-model="searchText" />
        </form>

        <div class="searchResults">
        
        	<a href="" ng-repeat="convention in conventions">
        		<div class="searchResult">
        			<div class="resultInfo">
        				<div class="title">
        					<p>{{convention.name}}</p>
        				</div>
        				<div class="info">
        					<p>{{convention.startDate}} - {{convention.endDate}}, {{convention.location}}</p>
        				</div>
        				<div class="categories">
        					<p>Categories: </p>
        					<p>{{convention.categories}}</p>
        				</div>
        			</div>
        			<div class="goButton">
                        <div class="icon-circle-right"></div>
                    </div>
        		</div>
        	</a>

        </div>

        <a href="">
            <div class="viewAll">
                <p>View All Results (20 more)</p>
            </div>
        </a>

    </div>

</body>
</html>