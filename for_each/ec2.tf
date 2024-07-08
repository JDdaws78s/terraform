#resource <resource-type> <resource-name>

resource "aws_instance" "expense" {
    for_each = var.instance_name
    ami = data.aws_ami.ami.id
    vpc_security_group_ids = ["sg-077813c2ed72c0749"]
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )

}
