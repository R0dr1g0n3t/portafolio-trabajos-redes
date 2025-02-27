🚀 Terraform AWS - Proyecto de Infraestructura como Código (IaC)

📌 Descripción

Este repositorio contiene un proyecto de Terraform para desplegar una instancia EC2 en AWS.

El objetivo es demostrar el uso de Terraform para gestionar infraestructura en la nube, configurando un proveedor, definiendo recursos y aplicando cambios de forma automatizada.

🛠️ Requisitos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

Terraform

AWS CLI

Una cuenta en AWS

📂 Estructura del Proyecto

proyecto-terraform/
│── main.tf           # Archivo principal de Terraform
│── README.md         # Documentación del proyecto

⚙️ Instalación y Configuración

1️⃣ Clonar el Repositorio

git clone https://github.com/tu-usuario/proyecto-terraform.git
cd proyecto-terraform

2️⃣ Configurar AWS CLI

Ejecuta:

aws configure

Ingresa:

AWS Access Key ID

AWS Secret Access Key

Default region name (Ejemplo: us-east-1)

Output format (json, o déjalo vacío)

3️⃣ Verificar credenciales

aws sts get-caller-identity

Debe devolver información sobre tu cuenta de AWS.

🔧 Configuración de Terraform

1️⃣ Crear el archivo main.tf

Crea un archivo main.tf con el siguiente contenido:

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mi_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI de Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = "MiPrimerServidor"
  }
}

2️⃣ Inicializar Terraform

terraform init

Esto descargará los plugins necesarios.

3️⃣ Planificar la Infraestructura

terraform plan

Muestra los cambios que se aplicarán.

4️⃣ Aplicar la Infraestructura

terraform apply

Confirma con yes y Terraform creará la instancia EC2 en AWS.

5️⃣ Verificar en AWS

Ir a la consola de AWS → EC2 → Instancias en ejecución.

Debería aparecer la instancia con el nombre "MiPrimerServidor".

6️⃣ Eliminar la Infraestructura (Opcional)

Si quieres eliminar la instancia EC2:

terraform destroy

Confirma con yes para eliminar los recursos.

🚀 Próximos Pasos

Ahora que Terraform está funcionando, podemos mejorar el proyecto:
✅ Usar variables para hacer la configuración más flexible.
✅ Crear módulos para reutilizar código.
✅ Configurar estado remoto para trabajar en equipo.
✅ Integrarlo con CI/CD para automatizar despliegues.

📜 Licencia

Este proyecto es de código abierto y puedes usarlo para aprender o mejorar tus propias implementaciones.

