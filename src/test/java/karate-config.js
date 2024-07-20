function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://www.alphavantage.co/query',
    apiKey: 'BGU0HNT15US653BN'
  };
  if (env == 'dev') {
    // customize
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}