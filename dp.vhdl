-- datapath for microprocessor
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port ( rst   : in STD_LOGIC:='0';
         clk   : in STD_LOGIC:='0';
         in1   : in std_logic_vector(3 downto 0):="0000";
			in2   : in std_logic_vector(3 downto 0):="0000";
			opcode : in std_logic_vector(3 downto 0):="0000";
			enable:in std_LOGIC:='1';
         output: out STD_LOGIC_VECTOR (3 downto 0):="0000"
         -- insert ports as need be
       );
end alu;

architecture bhv of alu is
begin
	process (rst, clk)
	begin
			if (rst ='1') then
				output<="0000";
			elsif (clk'event and clk='0') then
				if enable='1' then
				case OPCode is
					when "0010" =>
						output <= in1;
					when "0011" =>
						output<=in1+in2;
					when "0100" =>
						output<=in1-in2;
					when "0101" =>
						output<=in1 and in2;
					when "0110" =>
						output<=in1 or in2;
					when "1000"=>
						output<=not in1;
				when others =>
				end case;
			end if;
			end if;
	end process;

end bhv;

-- *************************************************************************
-- The following is code for an accumulator. you need to figure out
-- the interconnections to the datapath
-- *************************************************************************
library IEEE;
use IEEE.std_logic_1164.all;

entity acc is
  port ( rst   : in STD_LOGIC:='0';
         clk   : in STD_LOGIC:='0';
         input : in STD_LOGIC_VECTOR (3 downto 0):="0000";
         enb   : in STD_LOGIC:='0';
         output: out STD_LOGIC_VECTOR (3 downto 0):="0000"
       );
end acc;

architecture bhv of acc is
signal temp : STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
	process (rst, input, enb, clk)
	begin
		if (rst = '1') then
			output <= "0000";
			temp<="0000";
		elsif (clk'event and clk = '0') then
				if (enb = '1') then 
					output <= input;
					temp <= input;
				else
					output <= temp;
				end if;
		end if;
	end process;
end bhv;

-- ***********************************************************************
-- the following is code for a register file. you may use your own design.
-- you also need to figure out how to connect this inyour datapath.

-- the way the rf works is: it 1st checks for the enable, then checks to
-- see which register is selected and outputs the input into the file. 
-- otherwise, the output will be whatever is stored in the selected register.
-- ***********************************************************************
library IEEE;
use IEEE.std_logic_1164.all;

entity rf is
  port ( rst    : in STD_LOGIC;
         clk    : in STD_LOGIC;
         input  : in std_logic_vector(3 downto 0);
         sel    : in std_logic_vector(1 downto 0);
         enb    : in std_logic:='1';
         output : out std_logic_vector(3 downto 0)
       );
		
end rf;

architecture bhv of rf is
signal out0 : std_logic_vector(3 downto 0):="1000";
signal out1: std_logic_vector(3 downto 0):="1001";
signal out2: std_logic_vector(3 downto 0):="0111";
signal out3: std_logic_vector(3 downto 0):="0001";

begin
	process (rst, clk)
	begin
	
	  -- take care of rst state
	  if (rst='1') then
				  output<="0000";
				  out0<="0000";
				  out2	<="0000";
				  out3<="0000";
				  out1<="0000";
	  elsif(clk'event and clk = '0')then
		 if enb = '0' then
			case (sel) is
			  when "00" => 
				 out0 <= input;
			  when "01" => 
				 out1 <= input;				 
			  when "10" => 
				 out2 <= input;				 
			  when "11" =>
				 out3 <= input;
				when others =>				 
			end case;
		 else
			case (sel) is
			  when "00" =>
				 output <= out0;
			  when "01" =>
				 output <= out1;
			  when "10" =>
				 output <= out2;
			  when "11" =>
				 output <= out3;
			  when others =>
			end case;
		 end if;
	  end if;
	end process;	
end bhv;

library IEEE;
use IEEE.std_logic_1164.all;

entity dp is
  port ( rst     : in STD_LOGIC;
         clk     : in STD_LOGIC;
         imm     : in std_logic_vector(3 downto 0);
			opcode : in std_logic_vector(3 downto 0):="1111";
         output_4: out STD_LOGIC_VECTOR (3 downto 0);
			out_opcode:out std_LOGIC_VECTOR(3 downto 0)
         --add ports as required
       );
end dp;

architecture rtl2 of dp is

component alu is
  port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         in1   : in std_logic_vector(3 downto 0);
			in2   : in std_logic_vector(3 downto 0);
			opcode : in std_logic_vector(3 downto 0);
			enable:  in std_LOGIC;
         output: out STD_LOGIC_VECTOR (3 downto 0)
         -- add ports as required
    );
end component;

component acc is
   port ( rst   : in STD_LOGIC;
         clk   : in STD_LOGIC;
         input : in STD_LOGIC_VECTOR (3 downto 0);
         enb   : in STD_LOGIC;
         output: out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;


component rf is
  port ( rst    : in STD_LOGIC;
         clk    : in STD_LOGIC;
         input  : in std_logic_vector(3 downto 0);
         sel    : in std_logic_vector(1 downto 0);
         enb    : in std_logic;
         output : out std_logic_vector(3 downto 0)
       );
		
end component;
-- maybe we should add the other components here......

signal alu_out: std_logic_vector(3 downto 0):="0000";
signal acu_in: std_logic_vector(3 downto 0):="0000";
signal acu_out: std_logic_vector(3 downto 0):="0000";
signal reg_out: std_logic_vector(3 downto 0):="0000";
signal dd: std_logic_vector (1 downto 0):="00";
signal dado: std_logic_vector(3 downto 0):="0000";
signal enable_reg,enable_acu,enable_alu: std_logic:='0';
signal alu_in1,alu_in2,opcode_sig,imm_sig:std_LOGIC_VECTOR(3 downto 0):="1111";
signal teste:integer range 0  to 2:=0;
-- maybe we should add signals for interconnections here.....

begin
	alu1: alu port map (rst,clk,alu_in1,alu_in2, opcode_sig,enabLe_alu, alu_out);
	acumulador_atual: acc port map (rst,clk,acu_in,enable_acu,acu_out);
	registrador : rf port map (rst,clk,dado,dd,enable_reg,reg_out);
	-- maybe this is were we add the port maps for the other components.....
			
	      out_opcode<=opcode_sig;
	process (rst, clk,opcode)
		begin
				if(rst='1') then
						acu_in<="0000";
						alu_in1<="0000";
						alu_in2<="0000";
						dado<="0000";
				elsif (clk'event and clk='0') then
				if(opcode=opcode_sig ) then
					if imm=imm_sig then
						if teste=2 then
							enable_alu<='0';
						else 
													teste<=teste+1;
							enable_alu<='1';
							end if;
					end if;
				else
				teste<=0;
					enable_alu<='1';
				end if;
					output_4<=acu_out;
					opcode_sig<=opcode;
					imm_sig<=imm;
					case OPCode is
						when "0010" =>   --fazer load
							alu_in1<=imm;
							enable_acu<='1';
							acu_in<=alu_out;
							
						when "0001" =>    --mover do acumulador para um registrador
							dd <= imm(3 downto 2);
							dado<=acu_out;
							enable_reg<='0';
						when "0000" =>     --Mover de um registrador para o acumulador
							enable_reg<='1';
							enable_acu<='1';
							dd <= imm(3 downto 2);
							acu_in<=reg_out;
							
						when "0011" =>    ---ADD
							dd <= imm(3 downto 2);
							enable_reg<='1';
							alu_in1<=acu_out;
							alu_in2<=reg_out;
							enable_acu<='1';
							acu_in<=alu_out;
						when "0100" =>   --SUB
							dd <= imm(3 downto 2);
							enable_reg<='1';
							alu_in1<=acu_out;
							alu_in2<=reg_out;
							enable_acu<='1';
							acu_in<=alu_out;
						when "0101" =>      --AND
							dd <= imm(3 downto 2);
							enable_reg<='1';
							alu_in1<=acu_out;
							alu_in2<=reg_out;
							enable_acu<='1';
							acu_in<=alu_out;
						when "0110" =>      --OR
							dd <= imm(3 downto 2);
							enable_reg<='1';
							alu_in1<=acu_out;
							alu_in2<=reg_out;
							enable_acu<='1';
							acu_in<=alu_out;
						when "1000"=>-- inv
							enable_acu<='1';
							alu_in1<=acu_out;
							alu_in2<=acu_out;
							acu_in<=alu_out;
						when others =>
					
					end case;
				end if;
			-- this you should change so the output actually
			-- comes from the accumulator so it follows the
			-- instruction set. since the accumulator is always 
			-- involved we want to be able to see the
			-- results/data changes on the acc.

			-- take care of reset state
		
			--output_4 <= alu_out;
		
   end process;
end rtl2;