
/* # Output - For Loop with List
output "for_output_list" {
  description = "For Loop with List"
  value = [for instance in aws_instance.myec2: instance.public_dns ]
}

# Output - For Loop with Map
output "for_output_map1" {
  description = "For Loop with Map"
  value = {for instance in aws_instance.myec2: instance.id => instance.public_dns}
} */

/* # Output - For Loop with Map Advanced
output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = {for c, instance in aws_instance.myec2: c => instance.public_dns}
}

# Output Legacy Splat Operator (latest) - Returns the List
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Expression"
  value = aws_instance.myec2.*.public_dns
}  
 */

output "user_with_roles" {
  value = [for name, role in var.iam_users : "${name} is the ${role}"]
}

variable "iam_users" {
  description = "list"
  type        = list(string)
  
     default     = ["user1", "user2", "user3"]
  
}