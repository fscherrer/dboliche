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

create trigger funcionarios_id for funcionarios
active before insert position 0
as
begin
  if(new.id is null) then
    new.id = (select coalesce(max(id), 0) from funcionarios) + 1;
end;
/

create trigger comanda_id for comanda
active before insert position 0
as
begin
  if(new.id is null) then
    new.id = (select coalesce(max(id), 0) from comanda) + 1;
end;
/

create trigger itens_bar_id for itens_bar
active before insert position 0
as
begin
  if(new.id is null) then
    new.id = (select coalesce(max(id), 0) from itens_bar) + 1;
end;
/


create trigger itens_comanda_id for itens_comanda
active before insert position 0
as
begin
  if(new.id is null) then
    new.id = (select coalesce(max(id), 0) from itens_comanda) + 1;
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


insert into pistas(descricao, disponivel, manutencao)
  values('Pista 1', 'S', 'N');
  
insert into pistas(descricao, disponivel, manutencao)
  values('Pista 2', 'S', 'N');

insert into pistas(descricao, disponivel, manutencao)
  values('Pista 3', 'S', 'N');
  

select
  itens_comanda.id,
  itens_comanda.id_comanda,
  itens_comanda.id_item,
  itens_bar.descricao,
  itens_comanda.qtdade,
  itens_comanda.qtdade * itens_bar.valor as valor
from
  itens_comanda
    join itens_bar on itens_bar.id = itens_comanda.id_item
    
insert into itens_comanda(
  id_comanda,
  id_item,
  qtdade,
  valor_item,
  id_funcionario)
values(
  1,
  3, 
  1,
  1,
  5)
  
update itens_comanda set id_item = :"id_item", qtdade = :"qtdade" where id = :"id"

select * from pistas;
select * from comanda;
select * from cliente_comanda;
select * from itens_bar;
select * from funcionarios;
select * from itens_comanda;
select * from clientes;

select 
  comanda.id, 
  abertura,
  pistas.descricao as pista,
  sum(valor_item) as valor,
  fechamento
from 
  comanda 
    join pistas
      on pistas.id = id_pista
    join itens_comanda 
      on itens_comanda.id_comanda = comanda.id
group by
  1, 2, 3, 5


delete from cliente_comanda;
delete from comanda;
update pistas set disponivel = 'S';

select 
  comanda.id, 
  abertura,
  pistas.descricao as pista,
  valor
from 
  comanda 
    join pistas
      on pistas.id = id_pista


drop procedure ABREPISTA
CREATE PROCEDURE ABREPISTA (PISTA INTEGER,FUNCIONARIO INTEGER,CLIENTE1 INTEGER,CLIENTE2 INTEGER,CLIENTE3 INTEGER,CLIENTE4 INTEGER,CLIENTE5 INTEGER,CLIENTE6 INTEGER)
RETURNS (STATUS INTEGER)
AS
declare variable temp integer;
begin
/* status:
 1 - abertura da comanda OK
 2 - Pista indisponivel
*/
/* Abrir a comanda gravando a data e hora de abertura e funcionario
   marcar a pista q esta sendo utilizada
   colocar os clientes dessa comanda
   marcar na tabela de pistas, que esta pista esta ocupada */
  Select count( disponivel ) from pistas where id = :pista and
       disponivel = 'S' into :temp;
  if ( temp = 0 ) then
    begin
       status = 2;
       suspend;
       Exit;
    end
  update pistas set disponivel = 'N' where id = :pista;
  
  Insert into comanda ( abertura, id_funcionario, id_pista, valor )
              values( CURRENT_TIMESTAMP, :funcionario, :pista, 0 );
  
  select id from comanda where id_pista = :pista and fechamento is null into :temp;

  if ( cliente1 <> 0 ) then
     insert into cliente_comanda ( id_comanda, id_cliente )
             values ( :temp, :cliente1);

  if ( cliente2 <> 0) then
     insert into cliente_comanda ( id_comanda, id_cliente )
             values ( :temp, :cliente2);

  if ( cliente3 <> 0 ) then
     insert into cliente_comanda ( id_comanda, id_cliente )
             values ( :temp, :cliente3);

  if ( cliente4 <> 0 ) then
     insert into cliente_comanda ( id_comanda, id_cliente )
             values ( :temp, :cliente4);

  if ( cliente5 <> 0 ) then
     insert into cliente_comanda ( id_comanda, id_cliente )
             values ( :temp, :cliente5);

  if ( cliente6 <> 0 ) then
     insert into cliente_comanda ( id_comanda, id_cliente )
             values ( :temp, :cliente6);

  status = 1;
  suspend;
end
/

-- procedure fecharComanda
--   libera a pista
--   marca data e hora de saída
--   calcula valor da pista
drop procedure fechaPista;
CREATE PROCEDURE fechaPista (idComanda int)
AS
BEGIN UPDATE pistas
   SET disponivel = 'S'
WHERE id = (SELECT id_pista FROM comanda WHERE id = :idComanda);

UPDATE comanda
   SET fechamento = CAST('now' AS TIMESTAMP)
WHERE id = :idComanda;

UPDATE comanda
   SET valor = (SELECT SUM(valor_item*qtdade)
                FROM itens_comanda
                WHERE id_comanda = :idComanda)
WHERE id = :idComanda;

END;
/
