# Docker in Depth
## Polyglot Conference 2014 Workshop

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
  listening to me passively. To that end, please watch [this 47 min.
  introductory video](https://www.youtube.com/watch?v=Q5POuMHxW-0)
  before the class.

### Syllabus
**Note**: This is a work in progress. Please watch this repo for updates.

#### 1. Introductions, Overview and Setup (9am, 30min)
#### 2. Core Concepts and Hello World (20min)

#### 3. Command Line Interface and Bash Scripting (30min)
#### 4. Using the API via Python + Basic Networking (30min)

#### 5. Build files (30min)
* Build files vs other approaches for creating images (direct scripting or config management)
#### 6. Process/container Supervision (30min)
* Single process approach 
* more traditional vm-like init + procs

#### Lunch (12 - 12:40pm)

#### 7. Volume and Image Management (30min)
#### 8. Intermediate Networking (30min)

#### 9. Service Discovery (20)
* intercontainers links
* dns with skydock
* etcd
#### 10. Monitoring, Logging and Error Detection (20min)

#### 11. Sample Use Cases 
##### Automated Test Runs via Jenkins (15min)
##### Managing OpenVPN (10min)
##### Running Postgresql and Other DBs (15min)
##### CoreOS and Cluster Deployment with Fleet (30min)
##### [_Blockade_](http://blockade.readthedocs.org/en/latest/index.html) for Testing Network Failures
(15min)

### 12. Advanced Networking (40min)
* pipework
* Open vSwitch

### Concluding Remarks and Discussion (4:30pm)
