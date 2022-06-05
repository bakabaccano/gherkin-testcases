@Component: Login
Feature: REQ-236-237

   Story: REQ-236-237

   Background: User does not logged in

@Status: ToBeAutomated
@Prioryty: High

Scenario: REQ-236-237 - Validate that log in attempt with an empty Password or Email field shows 'You must provide both email address and password' tooltip
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user enter <Email>
        And user enter <Password>
    Then redirects to Login page
        And shows 'You must provide both email address and password' tooltip

Examples:
| Email                 | Password |
| john_doe123@gmail.com | NULL     |
## Password field is NULL ##
| NULL                  | 12345    |
## Email field is NULL ##
