# S3

output "s3_bucket_id" {
  description = "The ID of the S3 bucket"
  value       = module.s3_bucket.bucket_id
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3_bucket.bucket_name
}

output "s3_bucket_url" {
  description = "The URL of the S3 bucket"
  value       = module.s3_bucket.bucket_url
}

# K8s

output "kube_cluster_id" {
  description = "Kubernetes cluster ID."
  value       = try(module.kube.cluster_id, null)
}

output "kube_cluster_name" {
  description = "Kubernetes cluster name."
  value       = try(module.kube.cluster_name, null)
}

output "external_cluster_cmd_str" {
  description = "Connection string to external Kubernetes cluster."
  value       = try(module.kube.external_cluster_cmd, null)
}

output "internal_cluster_cmd_str" {
  description = "Connection string to internal Kubernetes cluster."
  value       = try(module.kube.internal_cluster_cmd, null)
}

output "node_account_name" {
  description = "IAM node account name"
  value       = module.kube.node_account_name
}

output "service_account_name" {
  description = "IAM service account name"
  value       = module.kube.service_account_name
}

# VMs

output "vm_ip" {
  value = module.instance.vm_ip_address
}
