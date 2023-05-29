Feature: Create a new product

  Background: :
    * url 'https://api.escuelajs.co/api/v1'
    * def expectedOutput = read('postResponse.json')
    * def requestBody = read('postRequest.json')

  Scenario: Creating a product using a request(json)
    Given path '/products'
    And request requestBody
    When method POST
    Then status 201
    And print response

    Scenario: Creating another product and compare the responses(json)
      Given path '/products'
      And request requestBody
      When method POST
      Then status 201
      And print response
      And match response == expectedOutput

    Scenario: Create a post method but change the payload of the file request
      Given path '/products'
      And request requestBody
      And set requestBody.title = 'New Title'
      When method POST
      Then status 201
      And print response
