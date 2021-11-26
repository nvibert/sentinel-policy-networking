module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}
    
module "aws-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/aws/aws-functions/aws-functions.sentinel"
}

policy "advisory-mandatory-tags" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "soft-mandatory-vpn" {
  source            = "./only-allow-selective-dh-groups-aws-vpn.sentinel"
  enforcement_level = "hard-mandatory"
}
    
policy "hard-mandatory-policy" {
  source            = "./restrict-ingress-sg-rule-cidr-blocks.sentinel"
  enforcement_level = "hard-mandatory"
}
