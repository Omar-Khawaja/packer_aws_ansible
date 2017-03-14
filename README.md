This Packer template will create a CentOS 7 AMI and configure it with
httpd using the Ansible provisioner.

Please note the template assumes your AWS access key and secret key are
stored as environment variables. You must replace anything enclosed with
<> in the variables section to suit your particular needs. Keep in mind
that the "groups" variable must be the same as the "hosts" group in the 
Ansible playbook.

The removetty.sh script is provided and used to remove the tty requirement
to run as sudo (this requirement is the default for CentOS 7). This will be
important when the Ansible user requests elevated permission to install httpd.

The httpd playbook installs, starts, and enables httpd as well as replaces
the default index.html page with one notifying the user that the image was
provisioned with Packer and Ansible.

For an example of how to deploy this image after creating it, please refer to
https://github.com/Omar-Khawaja/terraform_aws
