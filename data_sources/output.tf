output "ami_id" {
    value = data.aws_ami.ami.id
}

output "vpc_default" {
    value = data.aws_vpc.vpc_default
}
