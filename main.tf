locals {
  join_char = "ryHvqUhDupQTHonkXttm4hJBwMbKVXomNMZvdrMWvHPC4Z96"

  prefix_join_string_list = [
    "${local.join_char}",
    "${var.prefix}",
  ]

  prefix_only_tmp = "${var.prefix}${join(join("", local.prefix_join_string_list), var.list)}"
  prefix_only     = "${split("${local.join_char}", local.prefix_only_tmp)}"

  suffix_join_string_list = [
    "${var.suffix}",
    "${local.join_char}",
  ]

  suffix_only_tmp = "${join(join("", local.suffix_join_string_list), var.list)}${var.suffix}"
  suffix_only     = "${split("${local.join_char}", local.suffix_only_tmp)}"

  prefix_and_suffix_tmp = "${var.prefix}${join("${local.join_char}${var.prefix}", local.suffix_only)}"
  prefix_and_suffix     = "${split(local.join_char, local.prefix_and_suffix_tmp)}"
}
