#create sbunet for management servers like jenkins or pgadmim
resource "aws_subnet" "subnet_for_mgmnt_server" {
  vpc_id     = data.aws_vpc.default_vpc_attrs.id
  cidr_block = var.CIDR_BLOCK_MGMNT
  tags = {
    Name = "subnet_for_mgmnt_servers"
  }
}
