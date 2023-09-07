
Feature: Prueba de la API de Usuarios

Background:
  * url 'https://jsonplaceholder.typicode.com'

Scenario: CP03 Validar que al obtener la lista de usuarios existan 10 usuarios
  Given path '/users'
  When method GET
  Then status 200
  And match karate.sizeOf(response) == 10
  # Verifica que haya exactamente 10 usuarios en la respuesta

Scenario: CP04 Validar que el usuario con id 1 tenga nombre "Leanne Graham"
  Given path '/users/1'
  When method GET
  Then status 200
  And match response.id == 1
  And match response.name == 'Leanne Graham'
  # Verifica que el nombre del usuario con ID 1 sea "Leanne Graham"
