Este portafolio no sólo es un portafolio para exponer mis progresos y como trabajo en la plataforma Terraform unido con una instancia EC2 en AWS, sino también para aprender un poco de GitHub, ya que este es mi primer paso trabajando personalmente en esta plataforma, así que lo siento si me equivoco en algo. Jajaja.
También hago este portafolio ya que, si alguien también tiene problemas al empezar en Terraform

Esto es el paso a paso de como instalar, configurar y usar Terraform por medio de una instancia EC2 en AWS

⚙️ Instalación y Configuración

1️⃣ Clonar el Repositorio

git clone https://github.com/R0dr1g0n3t/proyecto-terraform.git
cd proyecto-terraform

2️⃣ Configurar AWS CLI

      aws configure

Al hacer este comando te pedirá:
AWS Access Key ID o ID de clave de acceso
AWS Secret Access Key o Clave de acceso secreta 
Default region name: dale enter nomas
Output format: enter nomas

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
