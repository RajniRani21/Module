module "Ec2"{
for_each = var.instance
name=each.key
ami=each.value.ami
instance_type= each.value.instance_type
source="./C:/Users/rajni chaudhary/OneDrive/Desktop/EC-2"
}

module "s3" {
    for_each=var.s3_buckets
    source = "./C:/Users/rajni chaudhary/OneDrive/Desktop/s3"
    #"C:/Users\rajni chaudhary\OneDrive\\Desktop\s3"
    #git@github.com:RajniRani21/iamuser.git
    bucket_name=each.key
    acl=each.value.acl
}