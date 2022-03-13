resource "aws_nat_gateway" "mod_network_nat_gateway" {
  subnet_id = var.mod_network_nat_gw_subnet_id

  tags = {
    Name = join("", [var.stack_prefix, "rt"])
    Environment = var.stack_environment
    Role = join("", [var.stack_prefix, "network"])
    Cost_Center = var.stack_cost_center
  }
}