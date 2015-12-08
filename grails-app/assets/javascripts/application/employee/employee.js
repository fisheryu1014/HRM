/**
 * Created by fisher on 11/30/15.
 */
myApp
	.controller("EmployeeCtrl", ["$scope", "EmployeeService", "ngDialog", function ($scope, employeeService, ngDialog) {
		$scope.items = employeeService.list();
		$scope.employee = {};

		$scope.addNewEmployee = function() {
			ngDialog.open({
				template: "popTemplate/addEmployees",
				showClose: false,
				closeByDocument: false,
				//overlay: false,
				scope: $scope
			})
		};

		$scope.saveEmployee = function() {
			//employeeService.addEmployee();
			console.info($scope.employee);
			console.info(1);
		};

		$scope.saveEmployeeAndAddNew = function() {
			$scope.saveEmployee();
			ngDialog.closeAll();
			$scope.addNewEmployee();
			console.info(2);
		};

		$scope.cancel = function() {
			console.info(3)
		};

		$scope.close = function() {
			ngDialog.closeAll();
		};

	}])
	.factory("Employee", ["$resource", function($resource) {
		return {
			instance: function() {
				return $resource("/employee/:action", {action: "@action"}, {
					"list": {method: "GET", params: {action: "list"}, isArray: true}
				});
			}
		};
	}])
	.service("EmployeeService", ["Employee", function (Employee) {
		this.list = function() {
			return Employee.instance().list();
		}
}]);