resource "test_instance" "foo" {
  count = 1
}

output "foo_id" {
  value = "${test_instance.foo.id}"
}

variable "condition" {
  default = "true"
}

resource "test_instance" "bar" {
  count = "${var.condition ? 1 : 0}"
}


output "bar_id" {
  value = "${test_instance.bar.id}"
}
