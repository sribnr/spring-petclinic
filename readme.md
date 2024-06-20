# Spring PetClinic Sample Application Jenkins CICD Pipeline [![Build Status](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml/badge.svg)](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/spring-projects/spring-petclinic) [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=7517918)

## Jenkins CICD Pipeline for the Spring PetClinic Application 
---
Spring Petclinic is a [Spring Boot](https://spring.io/guides/gs/spring-boot) application built using [Maven](https://spring.io/guides/gs/maven/) You can build a jar file and run it from the command line (it should work just as well with Java 17 or newer):

```bash
git clone https://github.com/sribnr/spring-petclinic.git
```
Jenkins CICD Pipeline spring-petclinic.
```
Jenkins Pipeline http://3.17.13.87:8080/job/spring-petclinic/
```
<img width="1042" alt="spring-petclinic" src="https://github.com/sribnr/spring-petclinic/blob/main/files/default/pipeline-job.png">
<img width="1042" alt="spring-petclinic" src="https://github.com/sribnr/spring-petclinic/blob/main/files/default/pipeline-job-run.png">
<img width="1042" alt="spring-petclinic-package" src="https://github.com/sribnr/spring-petclinic/blob/main/files/default/artifactory-snapshot.png">
<img width="1042" alt="spring-petclinic-jcenter" src="https://github.com/sribnr/spring-petclinic/blob/main/files/default/Jcenter-remote-repo.png">

Jenkins Pipeline Stages: Build, test, upload artifact to JFrog Artifactory Repository and Build a Docker Image.

## Supported Files for Jenkins Pipeline.

[Jenkinsfile](https://github.com/sribnr/spring-petclinic.git/files/default/Jenkinsfile)

[Dockerfile](https://github.com/sribnr/spring-petclinic.git/files/default/Dockerfile)

[settings.xml](https://github.com/sribnr/spring-petclinic.git/files/default/Dockerfile)

[pom.xml](https://github.com/sribnr/spring-petclinic.git/files/default/pom.xml)
>Note: Contains changes to upload artifact to JFrog Artifactory

## Run Petclinic locally using Docker Image
Docker Image to Pull:

<img width=“1042” alt=“docker-hub” src="https://github.com/sribnr/spring-petclinic/blob/main/files/default/docker-hub.png">

```
docker pull sribnr/spring-petclinic
docker run -d -p 8080:8080 sribnr/spring-petclinic
```

You can then access the Petclinic at [http://localhost:8080](http://localhost:8080) in your browser.
<img width="1042" alt="petclinic-screenshot" src="https://github.com/sribnr/spring-petclinic/blob/main/files/default/petclinic-app.png">

## Looking for something in particular?

|Spring Boot Configuration | Class or Java property files  |
|--------------------------|---|
|The Main Class | [PetClinicApplication](https://github.com/spring-projects/spring-petclinic/blob/main/src/main/java/org/springframework/samples/petclinic/PetClinicApplication.java) |
|Properties Files | [application.properties](https://github.com/spring-projects/spring-petclinic/blob/main/src/main/resources) |
|Caching | [CacheConfiguration](https://github.com/spring-projects/spring-petclinic/blob/main/src/main/java/org/springframework/samples/petclinic/system/CacheConfiguration.java) |

## Interesting Spring Petclinic branches and forks

The Spring Petclinic "main" branch in the [spring-projects](https://github.com/spring-projects/spring-petclinic)
GitHub org is the "canonical" implementation based on Spring Boot and Thymeleaf. There are
[quite a few forks](https://spring-petclinic.github.io/docs/forks.html) in the GitHub org
[spring-petclinic](https://github.com/spring-petclinic). If you are interested in using a different technology stack to implement the Pet Clinic, please join the community there.

## Interaction with other open-source projects

One of the best parts about working on the Spring Petclinic application is that we have the opportunity to work in direct contact with many Open Source projects. We found bugs/suggested improvements on various topics such as Spring, Spring Data, Bean Validation and even Eclipse! In many cases, they've been fixed/implemented in just a few days.
Here is a list of them:

| Name | Issue |
|------|-------|
| Spring JDBC: simplify usage of NamedParameterJdbcTemplate | [SPR-10256](https://jira.springsource.org/browse/SPR-10256) and [SPR-10257](https://jira.springsource.org/browse/SPR-10257) |
| Bean Validation / Hibernate Validator: simplify Maven dependencies and backward compatibility |[HV-790](https://hibernate.atlassian.net/browse/HV-790) and [HV-792](https://hibernate.atlassian.net/browse/HV-792) |
| Spring Data: provide more flexibility when working with JPQL queries | [DATAJPA-292](https://jira.springsource.org/browse/DATAJPA-292) |

## Contributing

The [issue tracker](https://github.com/spring-projects/spring-petclinic/issues) is the preferred channel for bug reports, feature requests and submitting pull requests.

For pull requests, editor preferences are available in the [editor config](.editorconfig) for easy use in common text editors. Read more and download plugins at <https://editorconfig.org>. If you have not previously done so, please fill out and submit the [Contributor License Agreement](https://cla.pivotal.io/sign/spring).

## License

The Spring PetClinic sample application is released under version 2.0 of the [Apache License](https://www.apache.org/licenses/LICENSE-2.0).
