# Define providers for different regions
# we can also mention in provider.tf file
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us_east_2"
  region = "us-east-2"
}

# Define variables for common configurations
# we can also mention in variables.tf file
variable "instance_type" {
  default = "t2.small"
}


# Create an EC2 instance in us-east-1
resource "aws_instance" "instance_us_east_1" {
  provider = aws.us_east_1
  ami      = "ami-00beae93a2d981137"
  instance_type = var.instance_type

  tags = {
    Name = "Instance-US-East-1"
  }
}

# Create an EC2 instance in us-east-2
resource "aws_instance" "instance_us_east_2" {
  provider = aws.us_east_2
  ami      = "ami-0ca2e925753ca2fb4"
  instance_type = var.instance_type

  tags = {
    Name = "Instance-US-East-2"
  }
}
