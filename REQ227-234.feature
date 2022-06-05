@Component: Registrartion
Feature: REQ-227-234

   Story: REQ-227-234

   Background: User does not logged in

@Status: ToBeAutomated
@Prioryty: High

Scenario: REQ-227-234 - Validate that registration attempt with an empty field shows 'complete this field' tooltip
Given user navigates by clicking https://litecart.stqa.ru/en/
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
    Then tooltip 'complete this field' is displayed

Examples:
    | First Name | Last Name | Address 1           | Postcode | City   | Email                 | Phone      | Desired Password | Confirm Password |
    | NULL       | Doe       | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
    ## First Name field value is NULL ##
    | John       | NULL      | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
    ## Last Name field value is NULL ##
    | John       | Doe       | NULL                | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
    ## Address 1 field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NULL     | London | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
    ## Postcode field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | NULL   | john_doe123@gmail.com | +441234567 | 12345            | 12345            | 
    ## City field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | London | NULL                  | +441234567 | 12345            | 12345            | 
    ## Email field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | NULL       | 12345            | 12345            | 
    ## Phone field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | NULL             | 12345            | 
    ## Desired Password field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 | 12345            | NULL             | 
    ## Confirm Password Name Field value is NULL ##







