Feature: Iniciar Proceso

Scenario: No ha asignado estudiantes
	Given I visit a tesis with "1","1"
	Then press "Comenzar el proceso de tesis"
	Then I should see "No ha asignado estudiantes"

Scenario: No deberia poder comenzar el proceso
	Given I visit a tesis with "2","1"
	Then I should see "Activo"
	Then I cant see the button "Comenzar el proceso de tesis"