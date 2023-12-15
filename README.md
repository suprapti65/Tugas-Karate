# Karate API Test

---

Basic API Automation for Dgital Skola

---

### For Running on Console
- Run tests runner by className
 ```
  - mvn test -Dtest=$nameclassjava
  Example : mvn test -DTest=RunSingle
  ```

- Run parallel all test 
 ```
mvn test "-Dkarate.options=--tags ~${nametag}"
Example : mvn test -DTest=RunAllTest
  ```

### Additional Tools
- Json Schema
  - https://jsonschema.net

- JSON PathFinder
  - https://jsonpathfinder.com/

### Source Karate
- Documentation Karate
  - https://github.com/karatelabs/karate