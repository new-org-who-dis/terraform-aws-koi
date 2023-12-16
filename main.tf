resource "local_file" "readme" {
  content = "This is a readme file"
  filename = "README.md"
}

data "external" "hello" {
  program = ["bash", "-c", "echo `date` created > hello-data; echo {}"]
}
