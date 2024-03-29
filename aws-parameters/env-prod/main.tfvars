parameters = [
   #frontend parameters
   { name= "prod.frontend.catalogue_url", value = "http://catalogue-prod.devopspract.online:80/", type= "String"},
   { name= "prod.frontend.user_url", value = "http://user-prod.devopspract.online:80/", type= "String"},
   { name= "prod.frontend.cart_url", value = "http://cart-prod.devopspract.online:80/", type= "String"},
   { name= "prod.frontend.shipping_url", value = "http://shipping-prod.devopspract.online:80/", type= "String"},
   { name= "prod.frontend.payment_url", value = "http://payment-prod.devopspract.online:80/", type= "String"},
   #user Parameters
   { name= "prod.user.mongo", value = "true", type= "String"},
   { name= "prod.user.redis_host", value = "redis-prod.devopspract.online", type= "String"},
   { name= "prod.user.mongo_url", value = "mongodb://mongodb-prod.devopspract.online:27017/catalogue", type= "String"},
   #shipping Parameters
   { name= "prod.shipping.cart_endpoint", value = "cart:8080", type= "String"},
   { name= "prod.shipping.db_host", value = "mysql-prod.devopspract.online", type= "String"},
   #payment Parameters
   { name= "prod.payment.cart_host", value = "cart", type= "String"},
   { name= "prod.payment.cart_port", value = "8080", type= "String"},
   { name= "prod.payment.user_host", value = "user", type= "String"},
   { name= "prod.payment.user_port", value = "8080", type= "String"},
   { name= "prod.payment.amqp_host", value = "rabbitmq-prod.devopspract.online", type= "String"},
   #dispatch Parameters
   { name= "prod.dispatch.amqp_host", value = "rabbitmq-prod.devopspract.online", type= "String"},
   #catalogue Parameters
   { name= "prod.catalogue.mongo", value = "true", type= "String"},
   { name= "prod.catalogue.mongo_url", value = "mongodb://mongodb-prod.devopspract.online:27017/catalogue", type= "String"},
   #cart Parameters
   { name= "prod.cart.redis_host", value = "redis-prod.devopspract.online", type= "String"},
   { name= "prod.cart.catalogue_host", value = "catalogue-prod.devopspract.online", type= "String"},
   { name= "prod.cart.catalogue_port", value = "80", type= "String"},
   #app_versions
   { name= "prod.cart.app_version", value = "1.0.0", type= "String"},
   { name= "prod.frontend.app_version", value = "1.0.0", type= "String"},
   { name= "prod.catalogue.app_version", value = "1.0.0", type= "String"},
   { name= "prod.user.app_version", value = "1.0.1", type= "String"},
   { name= "prod.shipping.app_version", value = "1.0.1", type= "String"},
   { name= "prod.payment.app_version", value = "1.0.0", type= "String"},
   { name= "prod.dispatch.app_version", value = "1.0.0", type= "String"}
]


secrets = [
   #mysql password
   { name= "prod.mysql.password", value = "RoboShop@1", type= "SecureString"},
   #payment service file secrets
   { name= "prod.payment.amqp_user", value = "roboshop", type= "SecureString"},
   { name= "prod.payment.amqp_pass", value = "roboshop123", type= "SecureString"},
   #rabbitmq service file secrets
   { name= "prod.rabbitmq.amqp_user", value = "roboshop", type= "SecureString"},
   { name= "prod.rabbitmq.amqp_pass", value = "roboshop123", type= "SecureString"},
   #dispatch service file secrets
   { name= "prod.dispatch.amqp_user", value = "roboshop", type= "SecureString"},
   { name= "prod.dispatch.amqp_pass", value = "roboshop123", type= "SecureString"},
   #shipping password
   { name= "prod.shipping.password", value = "RoboShop@1", type= "SecureString"},
   #docdb username and password
   { name= "prod.docdb.user", value = "admin1", type= "SecureString"},
   { name= "prod.docdb.password", value = "RoboShop1", type= "SecureString"},
   #rds username and password
   { name= "prod.rds.user", value = "admin1", type= "SecureString"},
   { name= "prod.rds.password", value = "RoboShop1", type= "SecureString"},
   #loadrunner
   { name= "prod.ssh.password", value = "DevOps321", type= "SecureString"},
   #sonarqube
   { name= "/sonarqube/username", value = "admin", type= "SecureString"},
   { name= "/sonarqube/password", value = "admin123", type= "SecureString"},
   #nexus username and password
   { name= "prod.nexus.username", value = "admin", type= "SecureString"},
   { name= "prod.nexus.password", value = "admin123", type= "SecureString"}

]