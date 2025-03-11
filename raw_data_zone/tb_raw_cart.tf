resource "aws_glue_catalog_table" "tb_raw_cart" {
  name          = "tb_raw_cart"
  database_name = "db_raw_financas"

  table_type = "EXTERNAL_TABLE"

  storage_descriptor {
    location      = "s3://gusribm-526554803206-analytics-datalake-raw/db_raw_financas/tb_raw_cart/"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "tb_raw_cart_properties"
      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"

      parameters = {
        "field.delim" = ";",
        "classification" = "csv",
        "skip.header.line.count" = "1"
      }
    }

    columns {
      name = "cod_cart"
      type = "string"
      comment = "Código do cartão. Representa os últimos 4 dígitos do cartão"
    }

    columns {
      name = "nom_cart"
      type = "string"
      comment = "Nome do cartão"
    }

    columns {
      name = "tip_pgmt_cart"
      type = "string"
      comment = "Tipo de pagamento do cartão. Débito, Crédito"
    }

    columns {
      name = "tip_cart"
      type = "string"
      comment = "Tipo de cartão. Físico ou Digital"
    }

    columns {
      name = "des_clas_cart"
      type = "string"
      comment = "Descrição da classificação do cartão. Principal ou Adicional"
    }

    columns {
      name    = "nom_bnco_cart"
      type    = "string"
      comment = "Nome do banco emissor do cartão"
    }

    columns {
      name    = "dia_venc"
      type    = "smallint"
      comment = "Dia do mês de vencimento do cartão"
    }

    columns {
      name    = "dia_fech_ftra"
      type    = "smallint"
      comment = "Dia de fechamento da fatura no mês"
    }

    columns {
      name    = "dat_vldd"
      type    = "date"
      comment = "Data de validade do cartão"
    }

    columns {
      name    = "des_bndr"
      type    = "string"
      comment = "Descrição da bandeira do cartão (Visa, Mastercard,...)"
    }

    columns {
      name    = "pct_cash_back_ftra"
      type    = "double"
      comment = "Percentual de Cash Back aplicado no valor da fatura"
    }

    columns {
      name    = "pts_por_dolr_gast"
      type    = "double"
      comment = "Pontos por dólar gasto"
    }

    columns {
      name    = "nom_dstn_dpst_bnfc"
      type    = "string"
      comment = "Nome do destino onde o benefício (cash back ou pontos) é depositado"
    }

    columns {
      name    = "cod_cart_fsco_assc"
      type    = "string"
      comment = "Código do cartão físico associado"
    }

    columns {
      name    = "list_bnfc"
      type    = "string"
      comment = "Lista de benefícios do cartão"
    }
  }
}