resource "aws_flow_log" "main" {
  vpc_id                   = var.vpc_id
  log_destination          = var.log_collection_bucket_arn
  traffic_type             = var.traffic_type
  max_aggregation_interval = var.max_log_aggregation_interval_in_seconds
  log_destination_type     = "s3"
  destination_options {
    per_hour_partition         = var.log_per_hour_partition
    file_format                = "parquet"
    hive_compatible_partitions = true
  }
}
