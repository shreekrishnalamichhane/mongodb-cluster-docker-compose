<p align="center">
    <a href="">
        <img src="mongodb.svg" align="center" alt="mongodb-icon" height="150px" width="150px" />
    </a>
</p>
<h1 align="center" style="border: 0;"> Mongo DB Replica Set </h1>
<h2 align="center">PSS Style (Primary - Secondary - Secondary)</h2>

<h3 style="color:red">This cluster has no access control mechanism till now. 
Don't forget to enable it before deploying to production. </h3>

<br>

This project will help you to setup a replica set of mongo db.

Original Repo : https://github.com/minhhungit/mongodb-cluster-docker-compose
Original Readme : [Readme](./old-readme.md)

## Table Of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Connect to Replica Set](#connect-to-the-replica-set)
- [Author](#author)
- [Contributors](#contributors)
- [License](#license)

---

## Prerequisites

**`Docker`**, **`Git`** and **`Docker Compose`** should be installed on your system.

## Installation

1. Clone the project.

   ```bash
   git clone https://github.com/Velorona-LLC/mongodb-replica-set.git
   ```

2. Execute the `install.sh` file. It will:

   - Step 1: Start all of the containers
   - Step 2: Initialize the replica sets (config servers and shards)
   - Step 3: Initializing the router
   - Step 4: Verify status of replica set for each shard

You should see `1 PRIMARY`, `2 SECONDARY`

## Connect to the replica set

You can connect to the replica set, by connecting to the `router 1` and `router 2` at port `27117` and/or `27118`.

### Note: 27117 and 27118 , not 27017 and 27018

```
mongodb://<username>:<password>@<router1:port1>,<router2:port2>/<database>?authSource=admin
```

## Author

**Author Name** &nbsp; : &nbsp; **Shree Krishna Lamichhane** <br>
**Author URI** &nbsp; &nbsp; &nbsp; : &nbsp; [shreekrishnalamichhane.com.np](https://site.shreekrishnalamichhane.com.np) <br>
**GitHub URI** &nbsp; &nbsp; &nbsp; : &nbsp; [shreekrishnalamichhane](https://github.shreekrishnalamichhane.com.np)

## Contributors

List of all Contributors:

- [Shree Krishna Lamichhane](https://github.shreekrishnalamichhane.com.np)
<!-- - [contributor name](#) -->

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

---

Thank you for using this documentation. If you love this project give it a star.
