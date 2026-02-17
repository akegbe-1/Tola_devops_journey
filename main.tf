terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    # Access key and secret key will be read from environment variables:
    # AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t3.micro"

    tags = {
        Name = "my-instance"
    }
}