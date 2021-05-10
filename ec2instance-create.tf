Challenge #2 Modify the output json for ready to create ec2 instance

resource "aws_instance" "qa" {

    ami                          = "ami-image"
    availability_zone            = "eu-central-1a"
    disable_api_termination      = false
    ebs_optimized                = false
    get_password_data            = false
    hibernation                  = false
    instance_type                = "t2.2xlarge"
    ipv6_address_count           = 0
    key_name                     = "dlm"
    monitoring                   = false
    source_dest_check            = true
    tags                         = {}
    tenancy                      = "default"
    subnet_id                   = "subnet-123456789"
    vpc_security_group_ids      = ["sg-group id"]

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
        encrypted             = false
        iops                  = 1536
        tags                  = {}
        throughput            = 0
        volume_size           = 512
    }

    timeouts {}
}