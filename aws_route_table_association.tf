resource "aws_route_table_association" "a_a" {
  subnet_id      = aws_subnet.a_a.id
  route_table_id = aws_route_table.a_a.id
}
