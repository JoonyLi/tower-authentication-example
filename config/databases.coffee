module.exports =
  mongodb:
    development:
      name: 'tower-passport-example-development'
      port: 27017
      host: '127.0.0.1'
    test:
      name: 'tower-passport-example-test'
      port: 27017
      host: '127.0.0.1'
    staging:
      name: 'tower-passport-example-staging'
      port: 27017
      host: '127.0.0.1'
    production:
      name: 'tower-passport-example-production'
      port: 27017
      host: '127.0.0.1'

  redis:
    development:
      name: 'tower-passport-example-development'
      port: 6397
      host: '127.0.0.1'
    test:
      name: 'tower-passport-example-test'
      port: 6397
      host: '127.0.0.1'
    staging:
      name: 'tower-passport-example-staging'
      port: 6397
      host: '127.0.0.1'
    production:
      name: 'tower-passport-example-production'
      port: 6397
      host: '127.0.0.1'
