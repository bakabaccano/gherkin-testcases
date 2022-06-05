@Component: Cart
Feature: REQ-245

   Story: REQ-245

   Background: 

@Status: ToBeAutomated
@Prioryty: Low

Scenario: REQ-245 - Validate that user can remove product from Cart by pressing remove button
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user clicks 'Rubber Ducks' button on 'Menu'
        And user clicks 'Red Duck' product
        And user clicks 'Add to Cart' button
        And user clicks 'Checkout' link
And user clicks 'Remove' button
    Then 'Red Duck' product is remooved from 'Cart'