##################### database folders ###############################

resource "aws_s3_object" "db_raw_financas" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_financas/"
}

resource "aws_s3_object" "db_raw_musica" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_musica/"
}

resource "aws_s3_object" "db_raw_inventario" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_inventario/"
}

###################### table folders [db_raw_financas] ################################

resource "aws_s3_object" "s3_tb_raw_gast_fixo" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_financas/tb_raw_gast_fixo/"
}

resource "aws_s3_object" "s3_tb_raw_gast_vari" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_financas/tb_raw_gast_vari/"
}

resource "aws_s3_object" "s3_tb_raw_invs" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_financas/tb_raw_invs/"
}

resource "aws_s3_object" "s3_tb_raw_cart" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_financas/tb_raw_cart/"
}

resource "aws_s3_object" "s3_tb_raw_rcta" {
  bucket = "gusribm-526554803206-analytics-datalake-raw"
  key    = "db_raw_financas/tb_raw_rcta/"
}