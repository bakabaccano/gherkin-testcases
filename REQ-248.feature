@Component: Cart
Feature: REQ-248

   Story: REQ-248

   Background: 

@Status: ToBeAutomated
@Prioryty: Low

Scenario: REQ-248 - Validate that user can view Product page from the Cart
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user clicks 'Rubber Ducks' button on 'Menu'
        And user clicks 'Red Duck' product
        And user clicks 'Add to Cart' button
        And user clicks 'Checkout' link
        And user ckicks 'Red Duck' preview
    Then 'Red Duck' product info is shown