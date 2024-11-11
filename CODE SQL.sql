use vendas_de_veiculos

ALTER TABLE veiculos
ADD COLUMN valor double;

DELIMITER $$ 
create procedure inserir_clientes()
begin
	declare i default 1;
    while i <= 100 do
		insert into cliente (nome, cnh, tipo_cliente, cartao)
        values
        (
			concat('cliente', i),
            concat('CNH', LPAD(i,5, '0')),
            if(i % 2 = 0, 'Fisico','Juridico'),
            concat (LPAD( i , 15, '0')
		);
        set i = i + 1;
	end while;
end $$
DELIMITER ;
call Inserir_clientes();