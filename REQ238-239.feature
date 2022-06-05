@Component: Login
Feature: REQ-238-239

   Story: REQ-238-239

   Background: User does not logged in

@Status: ToBeAutomated
@Prioryty: High

Scenario: REQ-238-239 - Validate that log in attempt with an invalid Email or Password shows 'Wrong password or the account is disabled, or does not exist' tooltip
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user enter <Email>
        And user enter <Password>
    Then redirects to Login page
        And shows 'Wrong password or the account is disabled, or does not exist' tooltip

Examples:
| Email                  | Password |
| john_doe123gmail.com   | 12345    |
| john_doe123@gmailcom   | 12345    |
| invalidemail@gmail.com | 12345    |
| #john_doe123@gmail.com | 12345    |
| john_doe123@gmail.com  | 1234     |