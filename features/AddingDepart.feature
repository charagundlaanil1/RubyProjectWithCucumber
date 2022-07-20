Feature: login into the demo website
  Scenario Outline: Verifying that the user can login to the Demo Website
    Given i open the Website in a browser
    When i login with credentials using record <record>
    Then Flight Finder page is displayed
    Examples:
      | record     |
      | record1    |
      | record2    |
      | record3    |
