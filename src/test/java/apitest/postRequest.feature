Feature: Post test

  Background:
    Given url baseURL
    And print "------- ini adalah test post"
    * def body = {"id": 112233445566,"username": "prapti65","firstName": "prapti","lastName": " ","email": "prapti@gmail.com","password": "string123","phone": "0376373","userStatus": 200}
    * def headerRegress = { Accept: 'application/json'}

  @post @test
  Scenario: Regress test post
    When path "/user/createWithArray"
    And method post
    And headers headerRegress
    And request body
    Then status 200
    And print response
    And match response == { id:'#string',createdAt:'#string' }

