resource "helm_release" "example" {
  name       = "my-redis-release"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  version    = "6.0.1"

  set = [
    {
      name  = "cluster.enabled"
      value = "true"
    },
    {
      name  = "metrics.enabled"
      value = "true"
    }
  ]
}
