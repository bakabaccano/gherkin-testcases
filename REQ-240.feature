@Component: ProductPage
Feature: REQ-240

   Story: REQ-240

   Background: 

@Status: ToBeAutomated
@Prioryty: Low

Scenario: REQ-240 - Validate that clicking on the product preview redirects to the product page
Given user navigates by clicking https://litecart.stqa.ru/en/
    When user clicks 'Rubber Ducks' button on 'Menu'
        And user clicks 'Red Duck' product
    Then 'Red Duck' product info is shown