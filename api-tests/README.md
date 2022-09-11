# Ruby depedency setup for ruby-alpine
1. Install Ruby and development libraries which will be required for some of the dependencies: 
```
apk add --update build-base mariadb-dev nodejs tzdata openjdk8-jre && rm -rf var/cache/apk/*
```

2. Update ruby gem environment and install bundler for dependecy management:
```
 gem install bundler
```

3. Run `bundle install` while being in the same directory where Gemfile is located to install all required depdendencies for those tests to run. 

4. `smoke_tests.sh` is shell script containing command for test execution. This command is responsible for executing all tests based on environment specified and provide ooutput in `test-output` directory relative from where it i executed (see script itself for more details)