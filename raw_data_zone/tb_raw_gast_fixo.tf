resource "aws_glue_catalog_table" "tb_raw_gast_fixo" {
  name          = "tb_raw_gast_fixo"
  database_name = "db_raw_financas"

  table_type = "EXTERNAL_TABLE"

  storage_descriptor {
    location      = "s3://gusribm-526554803206-analytics-datalake-raw/db_raw_financas/tb_raw_gast_fixo/"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "tb_raw_gast_fixo_properties"
      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"

      parameters = {
        "field.delim" = ";",
        "classification" = "csv",
        "skip.header.line.count" = "1"
      }
    }

    columns {
      name = "nom_caix"
      type = "string"
      comment = "Nome do Caixa de onde sai o dinheiro da conta a pagar"
    }

    columns {
      name = "nom_cate"
      type = "string"
      comment = "Nome da categoria da conta"
    }

    columns {
      name    = "nom_subc"
      type    = "string"
      comment = "Nome da subcategoria da conta"
    }

    columns {
      name    = "des_cont"
      type    = "string"
      comment = "Descrição da conta"
    }

    columns {
      name    = "vlr_estm"
      type    = "double"
      comment = "Valor estimado da conta"
    }

    columns {
      name    = "dat_venc_cont"
      type    = "date"
      comment = "Data de vencimento da conta"
    }

    columns {
      name    = "nom_empr"
      type    = "string"
      comment = "Nome da empresa beneficiada pela conta"
    }

    columns {
      name    = "dat_venc_ftra"
      type    = "date"
      comment = "Data de vencimento da fatura"
    }

    columns {
      name    = "vlr_pago"
      type    = "double"
      comment = "Valor pago na fatura"
    }

    columns {
      name    = "dat_pago"
      type    = "date"
      comment = "Data do pagamento da fatura"
    }

    columns {
      name    = "cod_form_pgto"
      type    = "string"
      comment = "Código da forma do pagamento. Pix, Boleto ou 4 dígitos do cartão"
    }
  }
}