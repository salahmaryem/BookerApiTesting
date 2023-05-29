Feature: get user by token

  Background:
    * def loginResponse = call read('classpath:examples/booker/Auth.feature')
    * def accessToken = loginResponse.accessToken

  Scenario: Use Access Token to get user's informations
    Given url 'https://api.escuelajs.co/api/v1/auth/profile'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    And print responseHeaders.Authorization
    Then status 200
    And print response