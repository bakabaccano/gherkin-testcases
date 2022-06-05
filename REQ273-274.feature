@Component: Registrartion
Feature: REQ-273-274

   Story: REQ-273-274

   Background: User does not logged in

@Status: ToBeAutomated
@Prioryty: High

Scenario: REQ-273-274 - Validate that Registration attempt with exceeding the maximum length of First Name and Last Name fields shows 'Length is more then 10 characters' tooltip
When user clicks 'New customers click here' link
        And user sets 'United Kingdom' at 'Country' list box
        And user enter <First Name>
        And user enter <Last Name>
        And user enter <Address 1>
        And user enter <Postcode>
        And user enter <City>
        And user enter <Email>
        And user enter <Phone>
        And user enter <Desired Password>
        And user enter <Confirm Password>
    Then tooltip 'Length is more then 10 characters' is displayed

Examples:
    | First Name  | Last Name   | Address 1           | Postcode | City   | Email                 | Phone      | Desired Password | Confirm Password |
    | Johnnnnnnnn | Doe         | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
    | John        | Doeeeeeeeee | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
