function fn() {
  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'challenge';
  }
 var config = {
        env: env,
        testConfig:   'bar',
        urlSoap:      'url',
        urlRest:      'url',
        urlRestBus:   'url',
        urlApi:       'url',
        mySqlCredentials: 'path',
        datajson:     'json'
    }
    switch (env){
        case "challenge":
        config.urlApi     = 'https://catfact.ninja/';
        config.datajson   = 'challenge';
        break;
  }
  return config;
}