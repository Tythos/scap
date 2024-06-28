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

### targets

The values defined in `delivery/terraform.tfvars` can be used to control where the application will be deployed by providing specific details about the target cluster; specific details documenting the usage of each variable can be found in the corresponding `variables.tf` specification.

To test this approach, two different clusters were used:

1. A local cluster using minikube on a Windows machine

1. A cloud provider cluster using DigitalOcean (configured separately)

Deployment takes place from the `./delivery` folder using the usual Terraform three-step:

```sh
$ terraform init
$ terraform plan -out=tf.plan
$ terraform apply tf.plan
```
