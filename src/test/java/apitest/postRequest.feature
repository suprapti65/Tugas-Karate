Feature: Post test

  Background:
    Given url baseURL
    And print "------- ini adalah test post"
    * def body = {"name": "morpheus","job": "leader"}
    * def headerRegress = { Accept: 'application/json'}

  @post @test
  Scenario: Regress test post
    When path "api/users"
    And method post
    And headers headerRegress
    And request body
    Then status 201
    And print response
    And match response == { id:'#string',createdAt:'#string' }

