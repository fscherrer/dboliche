create table pistas(id integer not null primary key,
  descricao varchar(40),
  Disponivel char(1),
  manutencao char(1));
  
create table funcionarios(id integer not null primary key,
  nome varchar(50),
  endereco varchar(50),
  cidade varchar(30),
  telefone varchar(15),
  sexo char(1),
  ativo char(1));
  
create table clientes(id integer not null primary key,
  nome varchar(50),
  endereco varchar(50),
  cidade varchar(30),
  telefone varchar(15),
  sexo char(1),
  email varchar(50),
  dnasc date,
  id_funcionario integer);
  
create table itens_bar(id integer not null primary key,
  descricao varchar(50),
  valor numeric(8,2));
    
drop table comanda;
create table comanda(id integer not null primary key,
  abertura timestamp,
  fechamento timestamp,
  id_funcionario integer,
  id_pista integer,
  valor numeric(8,2));
   
create table itens_comanda(id integer not null primary key,
  id_comanda integer,
  id_item integer,
  qtdade integer,
  valor_item numeric(8,2),
  id_funcionario integer);

create table cliente_comanda(id_comanda integer not null,
  id_cliente integer not null,
  primary key(id_comanda, id_cliente));
  

-- Triggers
create trigger pistas_id for pistas
active before insert position 0
as
begin
  if(new.id is null) then
    new.id = (select coalesce(max(id), 0) from pistas) + 1;
end;
/

drop trigger clientes_id
create trigger clientes_id for clientes
active before insert position 0
as
begin
  if(new.id is null) then
    new.id = (select coalesce(max(id), 0) from clientes) + 1;
end;
/



-- Foreign Keys
-- comanda
--pistas
alter table comanda drop constraint FK_COMANDA_PISTAS;
alter table comanda
  add constraint FK_COMANDA_PISTAS
    foreign key(id_pista) references pistas(id);
    
alter table comanda drop constraint FK_COMANDA_FUNCIONARIOS;
alter table comanda
  add constraint FK_COMANDA_FUNCIONARIOS
    foreign key(id_funcionario) references funcionarios(id);

-- cliente_comanda 
alter table cliente_comanda drop constraint FK_CLIENTE_COMANDA_COMANDA;
alter table cliente_comanda 
  add constraint FK_CLIENTE_COMANDA_COMANDA 
    foreign key(id_comanda) references comanda(id);
    
alter table cliente_comanda drop constraint FK_CLIENTE_COMANDA_CLIENTES;
alter table cliente_comanda 
  add constraint FK_CLIENTE_COMANDA_CLIENTES
    foreign key(id_cliente) references clientes(id);
    
-- cliente
alter table clientes drop constraint FK_CLIENTES_FUNCIONARIO;
alter table clientes
  add constraint FK_CLIENTES_FUNCIONARIO
    foreign key(id_funcionario) references funcionarios(id);

-- itens_comanda
alter table itens_comanda drop constraint FK_ITENS_COMANDA_COMANDA;
alter table itens_comanda 
  add constraint FK_ITENS_COMANDA_COMANDA
    foreign key(id_comanda) references comanda(id);
    
alter table itens_comanda  drop constraint FK_ITENS_COMANDA_ITENS_BAR;
alter table itens_comanda 
  add constraint FK_ITENS_COMANDA_ITENS_BAR
    foreign key(id_item) references itens_bar(id);

alter table itens_comanda  drop constraint FK_ITENS_COMANDA_FUNCIONARIOS;
alter table itens_comanda 
  add constraint FK_ITENS_COMANDA_FUNCIONARIOS
    foreign key(id_funcionario) references funcionarios(id);

-- trigger atualizar o valor da comanda conforme altera-se os itens
create trigger atualizaValorComanda for itens_comanda
active after insert or delete or update position 0
as
declare variable item_comanda_id_comanda int;
begin
  if(inserting or updating) then
    item_comanda_id_comanda = new.id_comanda;
  else 
    item_comanda_id_comanda = old.id_comanda;
  
  update 
     comanda 
  set 
     valor = (select sum(valor_item * qtdade) from itens_comanda where id_comanda = :item_comanda_id_comanda)
  where 
     id = :item_comanda_id_comanda;
end;
/

-- procedure aberturaPista:
--   marca a pista como aberta
--   marca data e hora de abertura
--   marca clientes na comanda e grava em cliente_comanda
drop procedure abrePista;
create procedure abrePista(idPista int, idFuncionario int)
as
begin
  update pistas set disponivel = 'N' where id = :idPista;
  insert into comanda(id_pista, abertura, id_funcionario) values(:idPista, cast('now' as timestamp), :idFuncionario);
end;
/

-- procedure fecharComanda
--   libera a pista
--   marca data e hora de saída
--   calcula valor da pista
drop procedure fechaPista;
create procedure fechaPista(idComanda int)
as
begin
  update pistas set disponivel = 'S' where id = (select id_pista from comanda where id = idComanda);
  update comanda set fechamento = cast('now' as timestamp) where id = :idComanda;
  update comanda set valor = (select sum(valor_item * qtdade) from itens_comanda where id_comanda = idComanda)
    where id = :idComanda;
end;
/


insert into pistas(descricao, disponivel, manutencao)
  values('Pista 1', 'S', 'N');
  
insert into pistas(descricao, disponivel, manutencao)
  values('Pista 2', 'S', 'N');

insert into pistas(descricao, disponivel, manutencao)
  values('Pista 3', 'S', 'N');
  
select * from pistas;
