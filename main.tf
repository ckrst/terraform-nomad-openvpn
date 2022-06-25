


data "template_file" "openvpn_job" {
  template = <<EOF
client {
  enabled = true
}

EOF
}

resource "nomad_job" "app" {
  jobspec = file("${path.module}/mysql_job.hcl")
}