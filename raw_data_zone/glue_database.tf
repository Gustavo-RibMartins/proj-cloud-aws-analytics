resource "aws_glue_catalog_database" "db_raw_financas" {
  name = "db_raw_financas"
  tags = local.common_tags
}

resource "aws_glue_catalog_database" "db_raw_musica" {
  name = "db_raw_musica"
  tags = local.common_tags
}

resource "aws_glue_catalog_database" "db_raw_inventario" {
  name = "db_raw_inventario"
  tags = local.common_tags
}
