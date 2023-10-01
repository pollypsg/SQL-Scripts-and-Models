CREATE TABLE Cidade (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_id INTEGER UNSIGNED NOT NULL,
  Estado_id INTEGER UNSIGNED NOT NULL,
  descricao VARCHAR(150)) NOT NULL,
  PRIMARY KEY(id),
  INDEX Cidade_FKIndex1(Estado_id),
  INDEX Cidade_FKIndex2(Cliente_id)
);

CREATE TABLE Cliente (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  usuario_idusuario INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(150) NOT NULL,
  data_nascimento DATE NULL,
  genero CHAR(01)) NULL,
  telefone VARCHAR(30) NULL,
  PRIMARY KEY(id),
  INDEX Cliente_FKIndex1(usuario_idusuario)
);

CREATE TABLE Endereco (
  idEndereco INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_id INTEGER UNSIGNED NOT NULL,
  rua VARCHAR(100) NULL,
  numero VARCHAR(10) NULL,
  complemento VARCHAR(30) NULL,
  bairro VARCHAR(50) NULL,
  cep INTEGER UNSIGNED NULL,
  ponto_referencial VARCHAR(100) NULL,
  PRIMARY KEY(idEndereco),
  INDEX Endereco_FKIndex1(Cliente_id)
);

CREATE TABLE Entregador (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cidade_id INTEGER UNSIGNED NOT NULL,
  cnh INTEGER UNSIGNED NULL,
  nome VARCHAR(150) NULL,
  endereco VARCHAR(150) NULL,
  telefone VARCHAR(30) NULL,
  PRIMARY KEY(id),
  INDEX Entregador_FKIndex1(Cidade_id)
);

CREATE TABLE Estado (
  id INTEGER UNSIGNED NOT NULL,
  descricao VARCHAR(100) NULL AUTO_INCREMENT,
  sigla CHAR(2) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Funcionario (
  idFuncionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cidade_id INTEGER UNSIGNED NOT NULL,
  Restaurante_id INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(150) NULL,
  endereco VARCHAR(150) NULL,
  telefone VARCHAR(30) NULL,
  data_admissao DATE NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY(idFuncionario),
  INDEX Funcionario_FKIndex1(Restaurante_id),
  INDEX Funcionario_FKIndex2(Cidade_id)
);

CREATE TABLE Pedido (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Restaurante_id INTEGER UNSIGNED NOT NULL,
  Entregador_id INTEGER UNSIGNED NOT NULL,
  Cliente_id INTEGER UNSIGNED NOT NULL,
  StatusPedido_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id),
  INDEX Pedido_FKIndex1(StatusPedido_id),
  INDEX Pedido_FKIndex2(Cliente_id),
  INDEX Pedido_FKIndex3(Entregador_id),
  INDEX Pedido_FKIndex4(Restaurante_id)
);

CREATE TABLE PedidoProduto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Produto_id INTEGER UNSIGNED NOT NULL,
  Pedido_id INTEGER UNSIGNED NOT NULL,
  quantidade INTEGER UNSIGNED NULL,
  valor DECIMAL(10,2)) NULL,
  PRIMARY KEY(id),
  INDEX PedidoProduto_FKIndex1(Pedido_id),
  INDEX PedidoProduto_FKIndex2(Produto_id)
);

CREATE TABLE Produto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  TipoProduto_id INTEGER UNSIGNED NOT NULL,
  classificacao VARCHAR(100) NULL,
  valor_unitario DECIMAL NULL,
  estoque INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX Produto_FKIndex1(TipoProduto_id)
);

CREATE TABLE Restaurante (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cidade_id INTEGER UNSIGNED NOT NULL,
  razao_social VARCHAR(100)) NULL,
  endereco VARCHAR(100) NULL,
  nome_fantasia VARCHAR(150) NULL,
  telefone VARCHAR(30) NULL,
  endereco_filial VARCHAR(150) NULL,
  PRIMARY KEY(id),
  INDEX Restaurante_FKIndex1(Cidade_id)
);

CREATE TABLE StatusPedido (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(30) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE TipoProduto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(50) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE usuario (
  idusuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Funcionario_idFuncionario INTEGER UNSIGNED NOT NULL,
  email VARCHAR(100) NULL,
  senha VARCHAR(20) NULL,
  PRIMARY KEY(idusuario),
  INDEX usuario_FKIndex1(Funcionario_idFuncionario)
);


