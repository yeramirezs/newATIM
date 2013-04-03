Feature: List Sources


  Scenario: List investigation sources
    Given I visit a tesis with "1","1"
    Then  I should see  "El equilibrio economico dinamico"
    Then  I select thesis "1" and press "Show"
    And   I click "Listar fuentes"
    Then I should see "Pure exchange equilibrium of dynamic economic models"

  Scenario: Update analysis of sources
    When  I list sources of thesis "1"
    Then  I should see  "Pure exchange equilibrium of dynamic economic models"
    Then  I select source "3" and press "Analysis"
    Then  I fill analysis with "Este es el analisis que quiero"
    And   execute "Update analysis"
    Then  I list sources of thesis "1"
    Then  I select source "3" and press "Analysis"
    Then  I should see "Este es el analisis que quiero"





