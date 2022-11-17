--------------------------------------------------------------------------------
-- USP - Universidade de Sao Paulo, Campus Sao Carlos - ICMC
-- Project : Maquina de refrigerante
-- Autor   : Thierry de Souza Araujo, Gustavo Sampaio Lima
-- Date    : 29/12/2021
--------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity maquina_refri is
  port(
  	clk   : in std_logic;
  	reset : in std_logic;
  	botao : in std_logic;
  	moeda : in std_logic_vector (1 downto 0);
  	liberado   : out std_logic;
  	retornado  : out std_logic
  );
end maquina_refri;

architecture refri of maquina_refri is
	type State_Type is (M, L); -- adicionar Moedas, Liberar refrigerante
	signal estado : State_Type; 
	
	signal soma   : integer;
begin

	transicao : process(clk, reset)
		CONSTANT d_z : std_logic_vector (1 downto 0) := "00"; -- dez centavos
		CONSTANT v_o : std_logic_vector (1 downto 0) := "01"; -- vinte e cinco centavos
		CONSTANT c_a : std_logic_vector (1 downto 0) := "10"; -- cinquenta centavos
		CONSTANT c_m : std_logic_vector (1 downto 0) := "11"; -- cem centavos (1 real)
	begin
		if reset = '1' then
			estado <= M;
			soma   <= 0;
		
		elsif (clk'event AND clk = '1') then
			case estado is
				when M =>
					if botao = '1' then
						estado <= L;
					else
						if soma > 100 then
							soma <= 0;
						else
							-- soma das moedas
							if moeda = d_z then
								soma <= soma + 10;
							elsif moeda = v_o then
								soma <= soma + 25;
							elsif moeda = c_a then
								soma <= soma + 50;
							elsif moeda = c_m then 
								soma <= soma + 100;
							end if;
						end if;
					end if;
				when L =>
					if botao = '0' then
						estado <= M;
					end if;
					
					soma   <= 0;
			end case;
		end if;

	end process;

	saidas : process(estado, soma, reset)
	begin

		if reset = '1' then
			liberado   <= '0';
			retornado  <= '0';
		
		else
			if estado = L then
				if soma = 100 then
					liberado  <= '1';
				elsif soma < 100 then
					retornado <= '1';
					liberado  <= '0';
				else
					liberado <= '0';
				end if;
				
			elsif estado = M then 
				if soma > 100 then
					retornado <= '1';
				else
					retornado <= '0';
				end if;
				liberado <= '0';
				
			end if;
		end if;
		
	end process;
end refri;