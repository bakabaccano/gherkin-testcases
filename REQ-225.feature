@Component: Homepage
Feature: REQ-225

   Story: REQ-225

   Background: User does not logged in

@Status: ToBeAutomated
@Prioryty: Low

Scenario: REQ-225 - Validate that user can change Country settings and changes are saved on Home page
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user clicks 'Change' link
      And user opens 'Country' list box
      And user sets 'Belarus'
      And user clicks 'Save' button
    Then 'Belarus' is displayed in Header block