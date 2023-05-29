Feature: Update Product

  Background:
    * url 'https://api.escuelajs.co/api/v1/products'
    * def productId = 29
    * def matchingResponse = read('updateMatchResponse.json')

  Scenario: Update a product
    Given path productId
    And request { title: 'Change title', price: 100 }
    When method PUT
    Then status 200
    And match response == matchingResponse
    And match response.price == matchingResponse.price