# Installing Postgres

The tutorial should install and start a Postgres server automatically (inside
docker). Once the installation completes, we have two ways to connect to the
server. The first is the official client:

`psql.sh -U postgres`{{execute}}

Let's just confirm that we are indeed connected:

`\c`{{execute}}

Then quite the client again:

`exit`{{execute}}

The second is an inofficial client with a few nice features (inside docker as
well):

`pgcli.sh -h postgres-server -u postgres`{{execute}}

We can now start with creating a database and connect to it:

`CREATE DATABASE testdatabase;`{{execute}}

`\c testdatabase`{{execute}}

Everything is set up, so let's get started!
