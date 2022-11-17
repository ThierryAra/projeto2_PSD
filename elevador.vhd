--------------------------------------------------------------------------------
-- USP - Universidade de Sao Paulo, Campus Sao Carlos - ICMC
-- Project : Elevador de 16 andares 
-- Authors : Thierry de Souza Araujo, Gustavo Sampaio Lima
-- Date    : 27/12/2021
--------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity elevador is
  port(
  	clk   : in std_logic;
  	reset : in std_logic;
  	input : in std_logic_vector (3 downto 0);
  	atual      : out std_logic_vector (3 downto 0);
  	requisitado: out std_logic_vector (3 downto 0);
  	subindo    : out std_logic;
  	parado     : out std_logic;
  	descendo   : out std_logic
  );
end elevador;

architecture projeto of elevador is
	type State_Type is (S, D, P); -- Subir, Descer, Parado
	signal estado            : State_Type; 
	signal andar_atual       : std_logic_vector (3 downto 0);
	signal andar_requisitado : std_logic_vector (3 downto 0);
	
begin
	transicao : process(clk, reset)
    	variable resultado : std_logic_vector (3 downto 0) := "0000";
		variable sum       : std_logic_vector (3 downto 0) := "0001";
    	variable sub       : std_logic_vector (3 downto 0) := "1111";
		variable c         : std_logic := '0';
	
	begin
		if reset = '1' then
			andar_requisitado <= "0000";
			andar_atual       <= "0000";
			estado <= P;
			
		elsif (clk'event AND clk = '1') then
			-- transicao de estados
			--case estado is
			--	when S =>
			if estado = S then
					if andar_atual = andar_requisitado then
						estado <= P;
					elsif andar_atual > andar_requisitado then
						estado <= D;
					else
						--for i in 0 to 3 loop 
						--	resultado(i) := andar_atual(i) xor sum(i) xor c;
						--  	c  		    := (andar_atual(i) and sum(i)) or 
						--  				       (andar_atual(i) and c)      or 
						--  				       (sum(i) and c);
						--end loop;
							
						--andar_atual <= resultado;
						--c           := '0';
						
						andar_atual <= std_logic_vector(unsigned(andar_atual) + 1);
						--andar_atual <= std_logic_vector(resize(unsigned(andar_atual) + 1, andar_requisitado'length));
					end if;
				--when P =>
			elsif estado = P then
					andar_requisitado <= input; --garante que so aceite andares quando estiver parado
						
					if andar_atual > andar_requisitado then
						estado <= D;
					elsif andar_atual < andar_requisitado then
						estado <= S;
					end if;
		
				--when D =>
			elsif estado = D then
					if andar_atual = andar_requisitado then
						estado <= P;
					elsif andar_atual < andar_requisitado then
						estado <= S;
					else
						--for i in 0 to 3 loop 
							--resultado(i) := andar_atual(i) xor sub(i) xor c;
						  	--c            := (andar_atual(i) and sub(i)) or 
						  	--			       (andar_atual(i) and c)      or 
						  	--			       (sub(i) and c);
						--end loop;
						
						--andar_atual <= resultado;
						--c           := '0';
						
						andar_atual <= std_logic_vector(unsigned(andar_atual) - 1);
						--andar_atual <= std_logic_vector(resize(unsigned(andar_atual) - 1, 4));
						
					end if;
			end if;	
			--end case;	
				
		end if;
		
	end process;

	saida : process(andar_atual, andar_requisitado, estado, reset)
		
	begin
		if reset = '1' then
			atual       <= "0000";
			requisitado <= "0000";
			subindo     <= '0';
			parado      <= '1';
			descendo    <= '0';
		else
			atual       <= andar_atual;
			requisitado <= andar_requisitado;

			if estado = P then					
				subindo   <= '0';
				 parado   <= '1';
				descendo  <= '0';
		
			elsif estado = D then
				subindo   <= '0';
				 parado   <= '0';
				descendo  <= '1';
	
			elsif estado = S then
				subindo   <= '1';
				 parado   <= '0';
				descendo  <= '0';
			end if;
		end if;
	end process;
end projeto;
