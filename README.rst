=================
Terraform Modules
=================

Bare
====

Usage
-----

in your tf file

.. code-block:: hcl

   provider "aws" {
     region = "ap-northeast-1"
   }
   
   module "base" {
     source = "github.com/ymgyt/terraform-modules//bare"
     bastion_key_name = "your_ec2_key_pair"
     cidr_prefix = "10.0"
   }

after appling, you can ssh `<bastion_ip>@ec2-user -i <your_key>`

