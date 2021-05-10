resource "aws_instance" "qa" {
    ami                          = "ami-09ge9a14ad188f6f5"
    arn                          = "arn:aws:ec2:eu-central-1:185627533194:instance/i-0b60aab5b541ce746"
    associate_public_ip_address  = false
    availability_zone            = "eu-central-1a"
    cpu_core_count               = 8
    cpu_threads_per_core         = 1
    disable_api_termination      = false
    ebs_optimized                = false
    get_password_data            = false
    hibernation                  = false
    id                           = "i-0b60aab5b541ce746"
    instance_state               = "running"
    instance_type                = "t2.2xlarge"
    ipv6_address_count           = 0
    ipv6_addresses               = []
    key_name                     = "dlm"
    monitoring                   = false
    primary_network_interface_id = "eni-056ece6235f7e4120"
    private_dns                  = "ip-10-67-10-174.eu-central-1.compute.internal"
    private_ip                   = "10-67-10-174"
    secondary_private_ips        = []
    security_groups              = []
    source_dest_check            = true
    subnet_id                    = "subnet-0bf2b4132302f76e5"
    tags                         = {
        "Name" = "web application DEV"
    }
    tenancy                      = "default"
    vpc_security_group_ids       = [
        "sg-02aeef2ec4b05c408",
    ]

    credit_specification {
        cpu_credits = "standard"
    }

    enclave_options {
        enabled = false
    }

    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = true
        device_name           = "/dev/sda1"
        encrypted             = false
        iops                  = 1536
        tags                  = {}
        throughput            = 0
        volume_id             = "vol-0570b7c1ad41f3e6c"
        volume_size           = 512
        volume_type           = "gp2"
    }

    timeouts {}
}