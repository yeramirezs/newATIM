Feature: Create Thesis

Scenario: Blank data
	When I enter with the username "profesor"
	Then I press "Crear Tesis"
	Then I fill the thesis with "","" 
	Then I should see "Title can't be blank"

Scenario: Good Thesis
	When I enter with the username "profesor"
	Then I press "Crear Tesis"
	Then I fill the thesis with "Tesis 1","Tesis 1" 
	Then I should see "Thesis was successfully created."

Scenario: Short title
	When I enter with the username "profesor"
	Then I press "Crear Tesis"
	Then I fill the thesis with "Te","Tesis 1" 
	Then I should see "Title is too short (minimum is 3 characters)"

Scenario: Short description
	When I enter with the username "profesor"
	Then I press "Crear Tesis"
	Then I fill the thesis with "Tesis !","Te" 
	Then I should see "Description is too short (minimum is 3 characters)"

Scenario: Long title
	When I enter with the username "profesor"
	Then I press "Crear Tesis"
	Then I fill the thesis with "Tesis !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!","Tesis 1" 
	Then I should see "Title is too long (maximum is 140 characters)"