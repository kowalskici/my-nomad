server {
      enabled          = true
      bootstrap_expect = 2

      retry_join = [
        "nomad-server-1",
        "nomad-server-2"
      ]

      job_gc_threshold  = "20m"
      eval_gc_threshold = "5m"
      node_gc_threshold = "1h"
    }
