resource "aws_glue_catalog_table" "tb_raw_invs" {
  name          = "tb_raw_invs"
  database_name = "db_raw_financas"

  table_type = "EXTERNAL_TABLE"

  storage_descriptor {
    location      = "s3://gusribm-526554803206-analytics-datalake-raw/db_raw_financas/tb_raw_invs/"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "tb_raw_invs_properties"
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
      name    = "des_aplc"
      type    = "string"
      comment = "Descrição da aplicação (aplicação, rendimento, etc)"
    }

    columns {
      name    = "dat_aplc"
      type    = "date"
      comment = "Data da aplicação do valor investido"
    }

    columns {
      name    = "val_aplc"
      type    = "double"
      comment = "Valor aplicado/ aporte do investimento"
    }
  }
}