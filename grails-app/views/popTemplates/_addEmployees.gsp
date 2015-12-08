<div class="temp-main">
	<form class="add-employee-form">
		<fieldset class="form-group">
			<label for="eName">English Name:</label>
			<input type="text" class="col-xs-6 form-control" id="eName" placeholder="English Name" ng-model="employee.eName" />
		</fieldset>
		<fieldset class="form-group">
			<label for="cName">Chinese Name:</label>
			<input type="text" class="form-control col-xs-6" id="cName" placeholder="Chinese Name" ng-model="employee.cName" />
		</fieldset>
		<fieldset class="form-group">
			<label for="employee-date">Date:</label>
			<input type="date" id="employee-date" class="from-control" ng-model="employee.entryDate" />
		</fieldset>
		<input type="button" class="btn btn-primary" value="Save" ng-click="saveEmployee()" />
		<input type="button" class="btn btn-primary" value="Save&Add" ng-click="saveEmployeeAndAddNew()" />
		<input type="button" class="btn btn-primary" value="Cancel" ng-click="cancel()" />
		<input type="button" class="btn btn-primary" value="Close" ng-click="close()" />
	</form>
</div>