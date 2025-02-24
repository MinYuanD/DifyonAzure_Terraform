resource "helm_release" "dify" {
  name    = "dify"
  chart   = "./helm-release/dify-helm/charts/dify"
  version = "0.1.0"

  set {
    name  = "externalPostgres.username"
    value = var.pgsql_admin_login
  }

  set {
    name  = "externalPostgres.password"
    value = var.pgsql_admin_password
  }

  set {
    name  = "externalPostgres.address"
    value = var.pgsql_fqdn
  }

  set {
    name  = "externalRedis.host"
    value = var.redis_cache_host
  }

  set {
    name  = "externalRedis.password"
    value = var.redis_cache_password
  }

  set {
    name  = "externalPgvector.username"
    value = var.pgvector_username
  }

  set {
    name  = "externalPgvector.password"
    value = var.pgvector_password
  }

  set {
    name  = "externalPgvector.address"
    value = var.pgvector_fqdn
  }

  set {
    name  = "image.api.repository"
    value = var.dify_image_api_acr
  }

  set {
    name  = "image.web.repository"
    value = var.dify_image_web_acr
  }

  set {
    name  = "image.sandbox.repository"
    value = var.dify_image_sandbox_acr
  }
  
  namespace = "default"
}

