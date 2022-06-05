@Component: Cart
Feature: REQ-255

   Story: REQ-255

   Background: User does not logged in

@Status: ToBeAutomated
@Prioryty: High

Scenario: REQ-255 - Validate that clicking Confirm Order button with invalid Customer details shows 'Insufficient customer information, please fill out all necessary fields' tooltip
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user clicks 'Rubber Ducks' button on 'Menu'
        And user clicks 'Green Duck' product
        And user clicks 'Add to Cart' button
        And user clicks 'Checkout' link
        And user sets 'United Kingdom' at 'Country' list box
        And user enter <First Name>
        And user enter <Last Name>
        And user enter <Address 1>
        And user enter <Postcode>
        And user enter <City>
        And user enter <Email>
        And user enter <Phone>
        And user clicks 'Confirm Order' button
    Then tooltip 'Insufficient customer information, please fill out all necessary fields' is displayed

Examples:
    | First Name | Last Name | Address 1           | Postcode | City   | Email                 | Phone      |
    | NULL       | Doe       | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 |
    ## First Name field value is NULL ##
    | John       | NULL      | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | +441234567 |
    ## Last Name field value is NULL ##
    | John       | Doe       | NULL                | NW1 6XE  | London | john_doe123@gmail.com | +441234567 |
    ## Address 1 field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NULL     | London | john_doe123@gmail.com | +441234567 |
    ## Postcode field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | NULL   | john_doe123@gmail.com | +441234567 |
    ## City field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | London | NULL                  | +441234567 |
    ## Email field value is NULL ##
    | John       | Doe       | 221b, Baker Street  | NW1 6XE  | London | john_doe123@gmail.com | NULL       |
    ## Phone field value is NULL ##
    | NULL       | NULL      | NULL                | NULL     | NULL   | NULL                  | NULL       |
    ## All field values are NULL ##