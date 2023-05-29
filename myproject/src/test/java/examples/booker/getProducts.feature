Feature: Test getting products

  Background:
    * url 'https://api.escuelajs.co/api/v1'

  Scenario: Get All products
    Given path '/products'
    When method GET
    Then status 200
    And print response.length
    # And assert response.length == 209

 Scenario Outline: Get Product by id
    Given url 'https://api.escuelajs.co/api/v1/products/<productID>'
    When method GET
    Then status 200
    And print response

    Examples:
      | productID |
      | 28        |
      | 29        |
      | 30        |