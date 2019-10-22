job "hello" {
  type= "batch"
  region = "global"
  datacenters = ["default"]

  group "default" {

    task "MyHelloTAsk" {

      driver = "raw_exec"

      config {
        command = "echo"
        args = ["hello"]
      }

      #resources {
       # cpu = 500
        #ram = 256
      #}
    }

  }

}
