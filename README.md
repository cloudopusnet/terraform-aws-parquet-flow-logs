# terraform-aws-parquet-flow-logs
VPC Flow Logs in form of Apache Parquet Format stored in S3

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.97 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.97 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_flow_log.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_collection_bucket_arn"></a> [log\_collection\_bucket\_arn](#input\_log\_collection\_bucket\_arn) | Log collection S3 Bucket ARN | `string` | n/a | yes |
| <a name="input_log_per_hour_partition"></a> [log\_per\_hour\_partition](#input\_log\_per\_hour\_partition) | Indicates whether to partition the flow log per hour, different than `max_log_aggregation_interval_in_seconds` in terms of aggregating at the destination | `bool` | `false` | no |
| <a name="input_max_log_aggregation_interval_in_seconds"></a> [max\_log\_aggregation\_interval\_in\_seconds](#input\_max\_log\_aggregation\_interval\_in\_seconds) | The maximum interval of time (in seconds), during which a flow of packets is captured and aggregated into a flow log record. Valid Values: `60` (1 minute) or `600` (10 minutes). | `number` | `600` | no |
| <a name="input_traffic_type"></a> [traffic\_type](#input\_traffic\_type) | The type of traffic to capture. Valid values: ACCEPT,REJECT,ALL. | `string` | `"ALL"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID to attach to | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
