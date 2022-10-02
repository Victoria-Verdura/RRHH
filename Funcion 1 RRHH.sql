CREATE DEFINER=`root`@`localhost` FUNCTION `valor_total`(nr_sec_salario int ) RETURNS float
    NO SQL
BEGIN
	declare resultado float;
	select sum(s.vl_sueldo + s.vl_presentismo)
    into resultado
    from salario s
    where s.nr_sec_salario = nr_sec_salario; 
RETURN resultado;
END