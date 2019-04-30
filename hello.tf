provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "hello" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  connection {
    user = "${var.user}"
    private_key = "${file(var.private_key_path)}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo service nginx start"
    ]
  }
}

output "arn" {
  value = "${aws_instance.hello.arn}"
}

output "public_dns" {
  value = "${aws_instance.hello.public_dns}"
}

output "public_ip" {
  value = "${aws_instance.hello.public_ip}"
}
