# tf_list_add_prefix_suffix

This module adds a string before and after the list.
It is difficult to write naturally with syntax of Terraform.
Using this module makes it very simple.

## Module Input Variables

- `prefix` - (Optional) List add prefix string. (String)
- `suffix` - (Optional) List add suffix string. (String)
- `list` - (Required) Base string list. (List)

## Usage
```hcl
module list_add_prefix_suffix {
  source = "github.com/a4t/tf_list_add_prefix_suffix"
  prefix = "Hello"
  suffix = "world"
  list = [
    "example1",
    "example2"
  ]
}
```
