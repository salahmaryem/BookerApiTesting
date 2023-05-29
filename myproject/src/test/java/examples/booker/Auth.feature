Feature: Request to get token

  Scenario: Login and Obtain Access Token
    Given url 'https://api.escuelajs.co/api/v1/auth/login'
    And request {'email' : 'john@mail.com','password' : 'changeme'}
    When method POST
    Then status 201
    And print response
    * def accessToken = response.access_token
    And print accessToken
    * print {accessToken: accessToken}

