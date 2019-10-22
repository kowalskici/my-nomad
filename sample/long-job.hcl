job "hello" {
  type = "batch"
  region = "global"
  datacenters = [
    "default"]

  group "default" {
    restart {
      attempts = 3
      delay = "30s"
    }

    task "MyHelloTAsk" {

      driver = "raw_exec"

      config {
        command = "sleep"
        args = [
          "3600"]
      }

      #resources {
      # cpu = 500
      #ram = 256
      #}
    }

  }

}
