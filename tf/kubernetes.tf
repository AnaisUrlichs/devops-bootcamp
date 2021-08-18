resource "civo_kubernetes_cluster" "my-cluster" {
  name              = "my-cluster"
  region            = "NYC1"
  num_target_nodes  = 4
  target_nodes_size = element(data.civo_instances_size.small.sizes, 0).name
}

provider "kubernetes" {
  host     = civo_kubernetes_cluster.my-cluster.api_endpoint
  username = yamldecode(civo_kubernetes_cluster.my-cluster.kubeconfig).users[0].user.username
  password = yamldecode(civo_kubernetes_cluster.my-cluster.kubeconfig).users[0].user.password
  cluster_ca_certificate = base64decode(
    yamldecode(civo_kubernetes_cluster.my-cluster.kubeconfig).clusters[0].cluster.certificate-authority-data
  )
}

data "civo_instances_size" "small" {
  filter {
    key      = "name"
    values   = ["g3.small"]
    match_by = "re"
  }

  filter {
    key    = "type"
    values = ["instance"]
  }
}