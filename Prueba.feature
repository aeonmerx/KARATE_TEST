Feature: CP01 Validar que me muestre el JSON del primer post

Scenario: Realizar una solicitud GET a JSONPlaceholder
  Given url 'https://jsonplaceholder.typicode.com/posts/1'
  When method GET
  Then status 200




