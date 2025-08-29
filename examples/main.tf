data "coreapp-v1_namespace_list" "ns" {
}

data "coreapp-v1_namespace" "eda_ns" {
  name = "eda"
}

resource "coreapp-v1_namespace" "edaregion1" {
  api_version = "core.eda.nokia.com/v1"
  kind        = "Namespace"
  metadata = {
    name = "edaregion1"
    labels = {
      name                      = "edaregion1"
      cluster                   = "kube-cp-a-cluster-1"
      basenamespace             = "eda-system"
      "eda.nokia.com/bootstrap" = true
      trustinternal             = true
      trustapi                  = true
      trustnode                 = true
    }
  }
  spec = {}
  lifecycle {
    ignore_changes  = [status]
    prevent_destroy = true
  }
}
