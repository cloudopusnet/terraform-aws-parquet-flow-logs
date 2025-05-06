variable "log_collection_bucket_arn" {
  description = "Log collection S3 Bucket ARN"
  type        = string
  nullable    = false
}

variable "vpc_id" {
  description = "VPC ID to attach to"
  type        = string
  nullable    = false
}

variable "traffic_type" {
  description = "The type of traffic to capture. Valid values: ACCEPT,REJECT,ALL."
  type        = string
  default     = "ALL"
}

variable "max_log_aggregation_interval_in_seconds" {
  description = "The maximum interval of time (in seconds), during which a flow of packets is captured and aggregated into a flow log record. Valid Values: `60` (1 minute) or `600` (10 minutes)."
  type        = number
  default     = 600
}

variable "log_per_hour_partition" {
  description = "Indicates whether to partition the flow log per hour, different than `max_log_aggregation_interval_in_seconds` in terms of aggregating at the destination"
  type        = bool
  default     = false
}
