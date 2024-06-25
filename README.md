# scap

## self contained app pattern

### front

Basic Yarn-defined Vite application from a vanilla template.

### service

Basic Flask-defined WSGI application hosted via Gevent.

### state

Basic Sqlite3 database file intended to be mounted for access by the service.

### delivery

Collection of Terraform resources for deploying the application stack to a target cluster.
