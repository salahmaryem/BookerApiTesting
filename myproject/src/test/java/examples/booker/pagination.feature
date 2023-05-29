Feature: Fetch Products with Pagination

  Background:
    * def offset = 0
    * def limit = 10
    * def baseUrl = 'https://api.escuelajs.co/api/v1/products'

  Scenario: Get First Page of Products
    Given url baseUrl
    And params { offset: '#(offset)', limit: '#(limit)' }
    When method GET
    Then status 200
    And print response
    And print offset
    And print limit
    And eval offset = offset + limit
    And print offset
    And print limit

  Scenario: Fetch Next Page of Products
    Given url baseUrl
    And params { offset: '#(offset)', limit: '#(limit)' }
    When method GET
    Then status 200
    And print response
    And eval offset = offset + response.length
    And print offset
    And print limit




  Scenario: Get Products with Pagination
    Given url baseUrl
    And params { offset: '#(previousOffset)', limit: '#(previousLimit)' }
    When method GET
    Then status 200
    And print response
    And def offset = response.offset
    And def limit = response.limit
    And eval previousOffset = offset + parseInt(previousLimit)
    And eval previousLimit = parseInt(previousLimit) + parseInt(previousLimit)
    And print previousOffset
    And print previousLimit

  Scenario: Fetch Next Page of Products
    Given url baseUrl
    #And params { offset: previousOffset, limit: previousLimit }
    And params { offset: '#(previousOffset)', limit: '#(previousLimit)' }
    When method GET
    Then status 200
    And print response
    And def offset = response.offset
    And def limit = response.limit
    And eval previousOffset = offset + parseInt(previousLimit)
    And eval previousLimit = parseInt(previousLimit) + parseInt(previousLimit)
    And print previousOffset
    And print previousLimit
