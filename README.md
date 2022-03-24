# A Hello World Spring Boot App

A Hello World Spring Boot app.

#1. Configured a Github actions including following and can be seen in the github actions (merged from cicd to master)

  - Run on Ubuntu using the latest version
  - Check-out your repository under $GITHUB_WORKSPACE, so your workflow can access it
  - Set up JDK 11
  - Set up Maven cache
  -  Allows caching dependencies and build outputs to improve workflow execution time.
  - Run Tests

#2. Checkout to new branch "quesiton-2" 
  - Created a dockerfile
  - Build and run the image using below command
  - sudo docker build -t javaimage -f Dockerfile .
  - docker run -d -p  8080:8080 --name javatest javaimage:latest
  - Pushed the branch in to github
