# Automated PostgreSQL Backup Kubernetes CronJob

This repository provides easy way to Deploy an Automated CronJob to backup PostgreSQL Backup to any S3 Compatible Storage such as Amazon S3, E2E Object Store, DigitalOcean Spaces, etc

## Easy to Deploy using Deploy Script or Manually
- Configurable Timings
- AutoBackup to S3 using Streaming Upload (No Volume Mount Required)
- Minimum Memory Footprint

## How To Use

### Automated Deployment

To use the automated deployment:
1. Configure your namespace (if you don't want to use the default one) in `config.sh` and deploy.yaml
2. Configure Backup Timing Cron in deploy.yaml (Default is 12 AM Daily)
3. Configure your S3 Access Key, Access Secret and Bucket Name in `secrets.env`
4. Configure your Postgres Credentials, Database Name and Port in `secrets.env`
5. Run `deploy.sh` to automatcially Create Namespace, Deploy Secrets, and Create a CronJob
6. All Done! Enjoy the Backups!

### Manual Deployment

To deploy it manually, follow the steps 2,3 and 4 of Automated Deployment and then follow:
1. Create a namespace for deployment
2. Create the secrets in namespace using `kubectl create secret generic app-secrets --from-env-file=secrets.env -n NAMESPACE`
3. Create the CronJob in namespace using `kubectl apply -f deploy.yaml -n NAMESPACE`
4. All Done! Enjoy the Backups!

This repository is maintained by [Letstream Ventures Private Limited](https://www.theletstream.com)
