<a id="readme-top" name="readme-top"></a>

<!-- ------------------------------
* TITLE, DESCRIPTION & CONTACT
------------------------------ -->
# 🐋 inception

<table>
    <tr>
        <th align="left" width="3333px">Score</th>
        <th align="left" width="3333px">Duration</th>
        <th align="left" width="3333px">Peer(s)</th>
    </tr>
    <tr>
        <td>✅ <b>125</b> / 100</td>
        <td>🕓 2 week(s)</td>
        <td>👷🏻 No</td>
    </tr>
</table>

<br>

This project is a Docker infrastructure. It consists of **eight interdependent and interconnected containers** created from scratch, **two volumes** and **a network**. It provides advanced knowledge of **Docker**, `docker-compose.yml` and **Dockerfile**.

[**⛓️ FILE : SUBJECT**](en.subject.pdf)

<br>

<!-- ------------------------------
* TABLE OF CONTENTS
------------------------------ -->
## 📋 Table of contents

- [**👀 Overview**](#readme-overview)
- [**📦 Requirements**](#readme-requirements)
- [**💾 Installation**](#readme-installation)
- [**🛠️ Makefile**](#readme-makefile)
- [**📄 License**](#readme-license)

<a id="readme-overview" name="readme-overview"></a>
<p align="right"><b><a href="#readme-top">TOP ⬆️</a></b></p>

<!-- ------------------------------
* OVERVIEW
------------------------------ -->
## 👀 Overview

<table>
    <tr>
        <th align="left" width="1500px">Container</th>
        <th align="left" width="7500px">Description</th>
        <th align="left" width="1000px">Url</th>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/nginx">nginx:443</a></td>
        <td>Web server.</td>
        <td></td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/wordpress">wordpress:9000</a></td>
        <td>Wordpress & php-fpm.</td>
        <td>https://<code>localhost</code></td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/mariadb">mariadb:3306</a></td>
        <td>Database server.</td>
        <td></td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/bonus/adminer">adminer:9000</a></td>
        <td>Web UI for <code>mariadb</code>.</td>
        <td>https://<code>localhost</code>/adminer</td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/bonus/filebrowser">filebrowser:8080</a></td>
        <td>Filebrowser for <code>wordpress</code>.</td>
        <td>https://<code>localhost</code>/filebrowser</td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/bonus/redis">redis:6379</a></td>
        <td>Cache server for <code>wordpress</code>.</td>
        <td></td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/bonus/redis">vsftpd:20</a></td>
        <td>FTP server for <code>wordpress</code>.</td>
        <td>ftp://<code>localhost</code></td>
    </tr>
    <tr>
        <td><a href="/srcs/requirements/bonus/redis">website:8080</a></td>
        <td>Custom static website.</td>
        <td>https://<code>localhost</code>/website</td>
    </tr>
</table>

<a id="readme-requirements" name="readme-requirements"></a>
<p align="right"><b><a href="#readme-top">TOP ⬆️</a></b></p>

<!-- ------------------------------
* REQUIREMENTS
------------------------------ -->
## 📦 Requirements

```
sudo apt -y install make
```

<a id="readme-installation" name="readme-installation"></a>
<p align="right"><b><a href="#readme-top">TOP ⬆️</a></b></p>

<!-- ------------------------------
* INSTALLATION
------------------------------ -->
## 💾 Installation

**1. Get the project**

```
git clone https://github.com/rilemko/42-inception.git
```

<br>

**2. Install Docker**

```
sh docker_install.sh
```

> **🔵 Info:** You can also follow the official [Docker installation guide](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository).

<br>

**3. Setup the project**

```
cp srcs/.env.example srcs/.env
```

> **🟡 Important:** Don't forget to replace the information in the new `srcs/.env` file.

<br>

**4. Build the project**

```
make -j$(nproc)
```

<a id="readme-makefile" name="readme-makefile"></a>
<p align="right"><b><a href="#readme-top">TOP ⬆️</a></b></p>

<!-- ------------------------------
* MAKEFILE
------------------------------ -->
## 🛠️ Makefile

<table>
    <tr>
        <th align="left" width="500px">Rule</th>
        <th align="left" width="9500px">Action</th>
        </tr>
    <tr><td><code>all</code></td><td>Compile.</td></tr>
    <tr><td><code>start</code></td><td>Start project containers.</td></tr>
    <tr><td><code>stop</code></td><td>Stop project containers.</td></tr>
    <tr><td><code>restart</code></td><td>Restart project containers.</td></tr>
    <tr><td><code>ps</code></td><td>List all active Docker containers.</td></tr>
    <tr><td><code>cclean</code></td><td>Delete Docker cache.</td></tr>
    <tr><td><code>fclean</code></td><td>Apply <code>vclean</code> then <code>down</code>.</td></tr>
    <tr><td><code>vclean</code></td><td>Delete the local directory containing the volumes.</td></tr>
    <tr><td><code>down</code></td><td>Remove containers, images, networks and volumes.</td></tr>
    <tr><td><code>re</code></td><td>Apply <code>fclean</code> and force recompile.</td></tr>
</table>

[**⛓️ FILE : MAKEFILE**](Makefile)

<a id="readme-license" name="readme-license"></a>
<p align="right"><b><a href="#readme-top">TOP ⬆️</a></b></p>

<!-- ------------------------------
* LICENSE
------------------------------ -->
## 📄 License

This project is licensed under the terms of the **MIT** license.

[**⛓️ FILE : LICENSE**](LICENSE.md)

<p align="right"><b><a href="#readme-top">TOP ⬆️</a></b></p>
