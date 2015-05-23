Feature: See all  items in inventory

In order to see all the components in the inventory
As a user 
I want to browse all the components present in the inventory


Scenario: See inventory

 When I press "See all Components"
 Then I should have the following components:

 | Name            | model   | Quantity | Detail | Price| Remarks| User|
 | arduino         | mega    | 45       |        |      |        |  55 |
 