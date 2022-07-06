//Criando a key Pair para inicializar a VM
resource "aws_key_pair" "key" {
  key_name = "aws-key"
  // Rodar o comando ssh-keygen -f [nome da key] para criar a key que será inserida aqui
  public_key = file("./aws-key.pub") // utilizar a função file do tf para abrir a key , passando o caminho da chave
}

resource "aws_instance" "vm" {
  ami                         = "ami-052efd3df9dad4825"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform"
  }
}