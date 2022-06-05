@Component: Homepage
Feature: REQ-260

   Story: REQ-260

   Background:

@Status: ToBeAutomated
@Prioryty: Low

Scenario: REQ-260 - Validate that clicking on main banner refreshes Home page
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user clicks 'Main' banner
    Then 'Homepage' is refreshed