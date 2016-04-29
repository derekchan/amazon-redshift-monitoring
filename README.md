# Redshift Advance Monitoring
## Goals
The original version works only on Lambda. We don't use Lambda here, so I patched the script that can be run as a cron job.

## Usage

* Download dependencies
>pip install -r requirements.txt -t .

* Create user in Redshift
>grant select on all tables in schema pg_catalog to tamreporting

* Fill in configuration in run.sh
  * DB_USER : user name to log in to Redshift
  * DB_PASS : password for the user (plain text)
  * DB_HOST : DNS name of the Redshift cluster
  * DB_PORT : port used by Redshift
  * DB_NAME : Database name
  * CLUSTER_NAME : Cluster name to use on CloudWatch metrics
  * INTERVAL : how frequent you intend to run this monitoring, e.g. "1 hour"
  * AWS_ACCESS_KEY_ID : Access ID with access to cloudwatch:PutMetricData
  * AWS_SECRET_ACCESS_KEY : Secret access key

* Copy the code to your server and set up a cron

* After a few hours you can check your CloudWatch metrics, and create alarms. You can also create a Dashboard with all the graphs and have a view of your database as this one:

![Dashboard1](https://s3-eu-west-1.amazonaws.com/amzsup/dashboard1.png)
![Dashboard2](https://s3-eu-west-1.amazonaws.com/amzsup/dashboard2.png)
