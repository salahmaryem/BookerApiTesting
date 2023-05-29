Feature: Deleting a product

  Background:
    * url 'https://api.escuelajs.co/api/v1/products'
    * def productId = 68

  Scenario: Delete
    Given path productId
    When method DELETE
    Then status 200
    And match response == "true"
