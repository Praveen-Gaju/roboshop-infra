variable "instances" {
  default = {
    frontend = {
      name      = "frontend"
      type      = "t3.micro"
      #password  = "123"
    }
    mongodb = {
      name      = "mongodb"
      type      = "t3.micro"
      #password  = "123"
    }
    catalogue = {
      name      = "catalogue"
      type      = "t3.micro"
      #password  = "123"
    }
    redis = {
      name      = "redis"
      type      = "t3.micro"
      #password  = "123"
    }

    user = {
      name      = "user"
      type      = "t3.micro"
      #password  = "123"
    }
    cart = {
      name      = "cart"
      type      = "t3.micro"
      #password  = "123"

    }
    mysql = {
      name      = "mysql"
      type      = "t3.micro"
      password  = "Roboshop@1"
    }
    shipping = {
      name      = "shipping"
      type      = "t3.micro"
      password  = "Roboshop@1"
    }
    rabbitmq = {
      name      = "rabbitmq"
      type      = "t3.micro"
      password  = "roboshop123"
    }
    payment = {
      name      = "payment"
      type      = "t3.micro"
      password  = "roboshop123"
    }
    dispatch = {
      name      = "dispatch"
      type      = "t3.micro"
      password  = "roboshop123"
    }
  }
}