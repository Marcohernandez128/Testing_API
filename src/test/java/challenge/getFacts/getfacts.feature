#author Marco Hernandez
@CHALLENGE
  Feature: Tests for api get facts
    Background:
      * url urlApi
      * string apiPath = '/facts'
      * path apiPath
      * method get

    @TEST-006 @HP
    Scenario: CP - Validar que al ejecutar el servicio me devuelva un html
    dado que al ejecutar el servicio se ingresan los datos necesarios para su ejecución,
    cuando se ejecute el servicio debe devolver en el responseHeaders text/html,
    entonces hacemos un match con el response para validar el resultado

      * def headers = {'accept':'application/json','X-CSRF-TOKEN':'8E0FJe5GXleAg0a7xhqCH3XXq2LxQmOR6ApVWvGK'}
      * headers headers

      Given method get
      Then status 200

      * print responseHeaders
      * print responseTime
      * print response
      And assert responseHeaders['Content-Type'][0] == 'text/html; charset=UTF-8'

    @TEST-007 @HP
    Scenario: CP - Validar que al ejecutar el servicio me devuelva un nosniff en X-Content-Type-Options
    dado que al ejecutar el servicio se ingresan los datos necesarios para su ejecución,
    cuando se ejecute el servicio debe devolver en el responseHeaders nosniff,
    entonces hacemos un match con el response para validar el resultado

      * def headers = {'accept':'application/json','X-CSRF-TOKEN':'8E0FJe5GXleAg0a7xhqCH3XXq2LxQmOR6ApVWvGK'}
      * headers headers

      Given method get
      Then status 200

      * print responseHeaders
      * print responseTime
      And assert responseHeaders['X-Content-Type-Options'][0] == 'nosniff'

    @TEST-008 @HP
    Scenario: CP - Validar que al ejecutar el servicio me devuelva un 1; mode=block en X-XSS-Protection
    dado que al ejecutar el servicio se ingresan los datos necesarios para su ejecución,
    cuando se ejecute el servicio debe devolver en el responseHeaders 1; mode=block,
    entonces hacemos un match con el response para validar el resultado

      * def headers = {'accept':'application/json','X-CSRF-TOKEN':'8E0FJe5GXleAg0a7xhqCH3XXq2LxQmOR6ApVWvGK'}
      * headers headers

      Given method get
      Then status 200

      * print responseHeaders
      * print responseTime
      And assert responseHeaders['X-Frame-Options'][0] == 'SAMEORIGIN'

    @TEST-009 @HP
    Scenario: CP - Validar que al ejecutar el servicio me devuelva un Accept-Encoding en Vary
    dado que al ejecutar el servicio se ingresan los datos necesarios para su ejecución,
    cuando se ejecute el servicio debe devolver en el responseHeaders nosniff,
    entonces hacemos un match con el response para validar el resultado

      * def headers = {'accept':'application/json','X-CSRF-TOKEN':'8E0FJe5GXleAg0a7xhqCH3XXq2LxQmOR6ApVWvGK'}
      * headers headers

      Given method get
      Then status 200

      * print responseHeaders
      * print responseTime
      And assert responseHeaders['Vary'][0] == 'Accept-Encoding'

    @TEST-010 @HP
    Scenario: CP - Validar que al ejecutar el servicio me devuelva un keep-alive en Connection
    dado que al ejecutar el servicio se ingresan los datos necesarios para su ejecución,
    cuando se ejecute el servicio debe devolver en el responseHeaders keep-alive,
    entonces hacemos un match con el response para validar el resultado

      * def headers = {'accept':'application/json','X-CSRF-TOKEN':'8E0FJe5GXleAg0a7xhqCH3XXq2LxQmOR6ApVWvGK'}
      * headers headers

      Given method get
      Then status 200

      * print responseHeaders
      * print responseTime
      And assert responseHeaders['Connection'][0] == 'keep-alive'