resource "aws_glue_catalog_table" "tb_raw_objt_invs" {
  name          = "tb_raw_objt_invs"
  database_name = "db_raw_financas"

  table_type = "EXTERNAL_TABLE"

  storage_descriptor {
    location      = "s3://gusribm-526554803206-analytics-datalake-raw/db_raw_financas/tb_raw_objt_invs/"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "tb_raw_objt_invs_properties"
      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"

      parameters = {
        "field.delim" = ";",
        "classification" = "csv",
        "skip.header.line.count" = "1"
      }
    }

    columns {
      name = "cod_invs"
      type = "int"
      comment = "Código único identificador do investimento"
    }

    columns {
      name = "tip_invs"
      type = "string"
      comment = "Tipo de investimento"
    }

    columns {
      name    = "nom_invs"
      type    = "string"
      comment = "Nome do investimento"
    }

    columns {
      name    = "nom_cnta_invs"
      type    = "string"
      comment = "Nome da conta onde o investimento é feito"
    }

    columns {
      name    = "des_objt"
      type    = "string"
      comment = "Descrição do objetivo"
    }

    columns {
      name    = "dat_objt"
      type    = "date"
      comment = "Data alvo do objetivo"
    }

    columns {
      name    = "val_objt"
      type    = "double"
      comment = "Valor alvo do objetivo"
    }
  }
}