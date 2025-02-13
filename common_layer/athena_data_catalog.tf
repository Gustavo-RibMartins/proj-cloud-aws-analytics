
#resource "aws_athena_data_catalog" "transient_data_catalog" {
#  name        = "transient_data_catalog"
#  description = "Catálogo de Dados da Transient Data Zone"
#  type        = "GLUE"
#  tags        = local.common_tags

#parameters = {
#    "catalog-id" = "1234567"
#  }
#}