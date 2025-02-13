resource "aws_athena_workgroup" "analytics_wgp" {
  name = "analytics-wgp"
  tags = local.common_tags

  configuration {
    bytes_scanned_cutoff_per_query     = 1073741842
    enforce_workgroup_configuration    = true
    publish_cloudwatch_metrics_enabled = true

    result_configuration {
      output_location = "s3://gusribm-526554803206-analytics-athena-query-results/"
    }
  }
}