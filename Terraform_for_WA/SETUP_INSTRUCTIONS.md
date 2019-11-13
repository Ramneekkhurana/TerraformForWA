Steps before running the terraform script (in ap-southeast-1) :

1.	Create an EC2 key pair named prowlerParser and paste the public key to the file prowlerParser.pub
•	This Key is  used to access the EC2  instance if you want to watch the progress of the scan or to debug (you can do so by running the command cat /var/log/cloud-init-output.log when in the EC2) 

2.	Create two S3 buckets, one for prowler scan results and one for scoutsuite results (separated so that it is easy to download all the scout suite files required to open the html)

3.	Edit these parameters in the prowl-cloudinit file  
•	PROWLER_BUCKET_NAME
•	SCOUTSUITE_BUCKET_NAME
•	CUSTOMER_ACCOUNT_ACCESS_KEY, CUSTOMER_ACCOUNT_SECRET_KEY (Read Only / Security Audit Permissions access keys of customer account)
•	YOUR_ACCOUNT_ACCESS_KEY , YOUR_ACCOUNT_SECRET_KEY (access keys of your own account to allow writing to your S3 buckets)




Steps to run the script 

1. Terraform init

2. Terraform apply 

(input your access key and secret key)


After setting this up and running it once, for future Well Architected Scans, all you need to do is change the Customer Access Key portion and run terraform apply!

