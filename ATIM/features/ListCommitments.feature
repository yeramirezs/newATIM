Feature: List Commitments


  Scenario: List open commitments
    Given I visit a tesis with "1","1"
    Then  I should see  "El equilibrio economico dinamico"
    Then  I select thesis "1" and press "Show"
    And   I click "Consultar compromisos"
    Then I should see "Revision de las tesis de grado anteriores relacionadas con el equilibrio"


  Scenario: List open commitments
    When  I list "open" commitments of thesis "1"
    Then I should see "Revision de las tesis de grado anteriores relacionadas con el equilibrio"


  Scenario: List closed commitments
    Given  I list "open" commitments of thesis "1"
    And    I click "Closed"
    Then   I should see "Revision del trabajo de A Smith y el libre mercado"


  Scenario: List commitments due in 2 weeks
    Given  I list "open" commitments of thesis "1"
    And    I click "Due in 2 weeks"
    Then   I should see "Perdida de fidelidad y convergencia del Newton Ralphson"

  Scenario: List all commitments
    Given  I list "open" commitments of thesis "1"
    And    I click "All"
    Then   I should see "Revision de la normatividad economica y fiscal colombiana"


  Scenario: Close commitments
     When  I list "open" commitments of thesis "1"
     Then  I close commitment "1"
     Then  I list "open" commitments of thesis "1"
     Then I should not see "Revision del trabajo de Hobbes y la naturaleza de formacion de la riqueza"
