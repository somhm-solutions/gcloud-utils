# DevOps Overview

* **Goals** Reduce time to market


# Continuos Integeration
1) Develop
2) Test
3) Deploy


* **Continous Deployment**: Deploys to production server

* **Contious Delivery**: Deploys to any env.

### Process
* *Develop*
* *Commit*
* *Test*
* *Build* 
* *Deliver*

## **Build** In CI
* *Build*: Makes up all the ops required to release the software. Two Parts:
    - Process putting all the code together
    - Verifies codes integrity
* *CI Process*: 
    * 1) Code commit to repo server
    * 2) CI Server pools repo with latest code initiating tests.
        * If test are passed code is compiled.
    * 3) Integration feedback is sent to relevant teams through relevant mediums.
    * 4) Server continues pooling repo checking for change.

### Code Repo Server
**Starting Point storing our software souce code.**
* *Common Tech*: Git, SVN, Bitbucket

### Continuous Integration Server
**Runs our *integration script* when code is committed.**
* *Tools*: Jenkins, Tracis CI, Team City, etc.
* *Process*
    - 1) Retrieve code from repo server
    - 2) Merge last commit with old software
    - 3) Test the software
    - 4) Build the software
    - 5) Send feedback with result
* *Note*: CI Server is not nessevary as we can perform this operation with simple scripts in *Bash, Ant, Maven, or Makefile*
* *Build Triggers*: Hooks to start automated build

### Continuous Delivery
***Continous Delivery*: With Every build, we create a new build of the entire software and if need be *can* be release to production**
***Continous Deployment*: Release to production every time**
* **Pipeline**: 
    - 1) Develop
    - 2) Commit
    - 3) Test
    - 4) Build
    - 5) Deliver

### Good CD Features
* *Good branching strategies*
    - Branch for each feature
* *Strong unit test policy*
    - Test driven development
    - 85% coverage
    - Testing Suite
        * *1) Unit Test* - Bottom
        * *2) Service Tests* - Middle
        * *3) UI Tests* - Top
* *Automatic testing phase*
    - **Integration Tests**: Check if all software is properly integrated with other system promotions.
        * Test on real system or clone of system
    - **Acceptance Test**: Reduces the risk of accidentally removing features and having a build not align with business requirements.
        * Usually tests UI/UX, system and features connected to it.
* *Automatic code promotion*
    - *Basis of Continous release*
    - *Artifact*: All libraries and relation of every piece of the software. 
    - *Artifact immutability*: Maven to define the system and all its dependacies to install and build the software
* *Code Inspection*
    - **Linting**: Code formatting
    - **Cyclomatic Complex
    ity**: Number of independent linear paths through method. Determined by complexity of conditional branches

### **Cost/Change**:*Benefit*
* **Code in TDD Practice, Code associated with unit test**
