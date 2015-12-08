<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<div class="main-div detail-content">
			%{--employee list--}%
			<div class="main-div main-table panel panel-default" ng-controller="EmployeeCtrl">
				<div class="panel-heading">
					<span>Panel Heading</span>
					<div class="btn-group" role="group">
						<button type="button" class="icon-button btn btn-default" ng-click="addNewEmployee()"><span class="glyphicon glyphicon-plus"></span></button>
					</div>
				</div>
				%{--<div class="panel-body"></div>--}%
				<div class="table">
					<div class="table-head">
						<div class="col-xs-4">name</div>
						<div class="col-xs-4">date</div>
						<div class="col-xs-4"></div>
					</div>
					<div ng-repeat="item in items">
						<div class="col-xs-4">${item?.name}</div>
						<div class="col-xs-4">${item?.date}</div>
						<div class="col-xs-4"></div>
					</div>
				</div>
			</div>
		</div>

		%{--<g:render template="/popTemplates/addEmployees" />--}%
	</body>
</html>
