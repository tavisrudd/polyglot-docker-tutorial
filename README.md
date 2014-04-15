# Docker in Depth
## Polyglot Conference 2014 Workshop

### Tickets
Tickets can be purchased at https://www.picatic.com/polyglot-software-workshops

### Abstract

[Docker](https://www.docker.io/learn_more/) is an open-source engine
that automates the deployment of any application as a lightweight,
portable, self-sufficient container that will run virtually anywhere.
Docker containers are both hardware-agnostic and platform-agnostic.
This means that they can run anywhere, from your laptop to the largest
EC2 compute instance and everything in between - and they don't
require that you use a particular language, framework or packaging
system. That makes them great building blocks for deploying and
scaling web apps, databases and backend services without depending on
a particular stack or provider. Although it's only a year old, Docker
is in the [top 5 projects on
GitHub](https://github.com/dotcloud/docker/) (ranked by either Stars
or activity)

This full day lab will cover Docker in depth: from the basics to
advanced use cases. Students will progress from introductory exercises
on individual containers to creating, monitoring and troubleshooting
larger systems with clusters of interlinked containers. You will leave
with the skills and confidence to use Docker in a wide range of
settings.

We will be learning via hands-on examples and exercises rather than via
lecture.

### Requirements

Students should come with a laptop, a text editor, a terminal emulator
and ssh. The exercises themselves will be performed on EC2 so no
additional software is required.

### Pre-Requisites / Pre-Study

* Intermediate *Unix* system administration knowledge and command
  line skills. 
* If you're not already familiar with Bash and basic Python, please do
  some self study first.
* I want you to spend the tutorial day active at the keyboard not
  listening to me passively. To that end, please watch [this 57 min.
  introductory
  screencast](https://www.youtube.com/watch?v=LNAzzHS1Rho) before the
  class. If you are keen and have extra time, also watch 
  [this talk](https://www.youtube.com/watch?v=Q5POuMHxW-0) by
  Solomon Hykes.

### Syllabus

**Note**: This is a work in progress. Please watch this repo for
updates. The timing is currently a bit off. 

#### 1. Introductions, Overview and Setup (8am, 30min)
#### 2. Core Concepts and Hello World (20min)

#### 3. Command Line Interface and Bash Scripting (30min)
#### 4. Using the API via Python + Basic Networking (30min)

#### 5. Build files (30min)
* Build files basics 
* vs other approaches for creating images (tarball imports, etc.)
* integration with config management tools

#### 6. Processes & Supervision (30min)
* Docker's single process philosphy
* versus more traditional vm-like init + procs
* tradeoffs and use cases for each
* process supervision within and between containers

#### 7. Image Management and Volumes (30min)
* public index
* trusted builds
* using a private registry
* host bind mounts of volumes
* -volumes-from for data volume sharing
* using btrfs for snapshots of data volumes

#### 8. Intermediate Networking (30min)
* exposing ports and binding to host interfaces
* dns options
* network bridging
* intercontainer networking 
  via -icc or custom bridges and lxc network options
* trouble-shooting

#### Lunch (12 - 1pm)

#### 9. Service Discovery & Ambassador Pattern (30min)
* inter-container links and problems with this approach
* DNS with skydock
* etcd

#### 10. Monitoring, Logging and Error Detection (30min)
* logging via stdout
* logging via syslog or logstash to a log service container
* docker events api
* https://github.com/samalba/docker-cache
* with sensu

#### 11. Advanced Networking (30min)
* configuring alternate local network topologies via pipework
* software defined networking via Open vSwitch
* overhead of various approaches

#### 12. Docker on EC2

#### 13. Sample Use Cases 
* Automated Test Runs via Jenkins (15min)
* Managing OpenVPN (10min)
* Running Postgresql and Other DBs (15min)
* CoreOS and Cluster Deployment with Fleet (30min)
* [_Blockade_](http://blockade.readthedocs.org/en/latest/index.html) for Testing Network Failures (15min)
* mention of https://github.com/mesosphere/mesos-docker
* ...

### Concluding Remarks and Discussion (4:40pm)
* http://12factor.net/
* Immutable Infrastructure and 'Phoenix' Servers
