Feature: login into the demo website
  Scenario Outline: Verifying that the user can login to the Demo Website
    Given i open the Website in a browser
    When i login with credentials <username> and <password>
    Then Flight Finder page is displayed
    Examples:
      | username   | password |
      | selenium   | selenium |
      | tutorial   | tutorial |
      | selenium   | selenium |