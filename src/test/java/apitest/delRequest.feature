Feature: Delete request regress

  Background: Preparation
    Given url baseURL
    And print "This is Delete step preparation"

  @test
  Scenario: Test Delete data in regress
    When path '/api/users/3'
    And method delete
    Then status 204
    And print response