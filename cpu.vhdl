-- cpu (top level entity)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

-- these should probably stay the same
entity cpu is
   port (rst           : in STD_LOGIC;
			start         : in STD_LOGIC;
         clk           : in STD_LOGIC;
			output        : out STD_LOGIC_VECTOR (3 downto 0);
			hex0 : out std_logic_vector (6 downto 0);
			hex1 : out std_logic_vector (6 downto 0);
			hex2 : out std_logic_vector (6 downto 0);
			hex3 : out std_logic_vector (6 downto 0);
			hex4 : out std_logic_vector(6 downto 0);
			hex5 : out std_logic_vector(6 downto 0);
			hex6 : out std_logic_vector(6 downto 0);
       	hex7 : out std_logic_vector(6 downto 0)
          -- add ports as required
        );
end cpu;

-- these will change as your design grows
architecture struc of cpu is
component ctrl 
   port (rst   : in STD_LOGIC;
    	   start : in STD_LOGIC;
         clk   : in STD_LOGIC;
         imm   : out std_logic_vector(3 downto 0);
			estado_atual : out std_logic_vector(3 downto 0)	;
			linha_ctrl : out std_logic_vector (3 downto 0)
			-- add ports as required
        );
end component;

component dp
   port 	( 	rst     : in STD_LOGIC;
				clk     : in STD_LOGIC;
				imm     : in std_logic_vector(3 downto 0);
	  			opcode : in std_logic_vector(3 downto 0);
				output_4: out STD_LOGIC_VECTOR (3 downto 0);
				out_opcode:out std_LOGIC_VECTOR(3 downto 0)
          -- add ports as required
        );
end component;


signal immediate : std_logic_vector(3 downto 0);
signal estado : std_logic_vector(3 downto 0);
signal estado_dp : std_logic_vector(3 downto 0);
signal enable : std_logic;
signal cpu_out : std_logic_vector(3 downto 0);
signal linha_cpu : std_logic_vector(3 downto 0);
begin

-- notice how the output from the datapath is tied to a signal
-- this output signal is then used as input for a decoder.
-- we can also see the output as "output".
-- the output from the datapath should be coming from the accumulator.
-- this is because all actions take place on the accumulator, including
-- all results of any alu operation. naturally, this is because of the 
-- nature of the instruction set.

  controller: ctrl port map(rst, start, clk, immediate,estado,linha_cpu);
  datapath: dp port map(rst, clk, immediate,estado,cpu_out,estado_dp);


  process(rst,cpu_out,clk)
  begin
		if (rst='1') then
			hex4 <= "1000000";
			hex5 <= "1000000";
			hex6 <= "1000000";
			hex7 <= "1000000";
			output<="0000";
		elsif(clk'event and clk='0') then
	 		output<=cpu_out;
			-- this acts like a BCD to 7-segment decoder,
			-- can see output in waveforms as cpu_out
			case cpu_out is
				when "0000" =>
					hex4 <= "1000000";
					hex5 <= "1000000";
				when "0001" =>
					hex5 <= "1000000";
					hex4 <= "1111001";
				when "0010" =>
					hex5 <= "1000000";
					hex4 <= "0100100";
				when "0011" =>
					hex5 <= "1000000";
					hex4 <= "0110000";
				when "0100" =>
					hex5 <= "1000000";
					hex4 <= "0011001";
				when "0101" =>
					hex5 <= "1000000";
					hex4 <= "0010010";
				when "0110" =>
					hex5 <= "1000000";
					hex4 <= "0000010";
				when "0111" =>
					hex5 <= "1000000";
					hex4 <= "1111000";
				when "1000" =>
					hex5 <= "1000000";
					hex4 <= "0000000";
				when "1001" =>
					hex5 <= "1000000";
					hex4 <= "0010000";
				when "1010" =>
					hex4 <= "1111001";
					hex5 <= "1000000";
				when "1011" =>
					hex5 <= "1111001";
					hex4 <= "1111001";
				when "1100" =>
					hex5 <= "1111001";
					hex4 <= "0100100";
				when "1101" =>
					hex5 <= "1111001";
					hex4 <= "0110000";
				when "1110" =>
					hex5 <= "1111001";
					hex4 <= "0011001";
				when "1111" =>
					hex5 <= "1111001";
					hex4 <= "0010010";				
				when others =>
			 end case;
			 
			 case estado_dp is
				when "0000" =>
					hex3 <= "1000000";
					hex2 <= "1000000";
					hex1 <= "1000000";
					hex0 <= "1000000";
				when "0001" =>
					hex3 <= "1000000";
					hex2 <= "1000000";
					hex1 <= "1000000";
					hex0 <= "1111001";
				when "0010" =>
					hex3 <= "1000000";
					hex2 <= "1000000";
					hex1 <= "1111001";
					hex0 <= "1000000";
				when "0011" =>
					hex3 <= "1000000";
					hex2 <= "1000000";
					hex1 <= "1111001";
					hex0 <= "1111001";
				when "0100" =>
					hex3 <= "1000000";
					hex2 <= "1111001";
					hex1 <= "1000000";
					hex0 <= "1000000";
				when "0101" =>
					hex3 <= "1000000";
					hex2 <= "1111001";
					hex1 <= "1000000";
					hex0 <= "1111001";
				when "0110" =>
					hex3 <= "1000000";
					hex2 <= "1111001";
					hex1 <= "1111001";
					hex0 <= "1000000";
				when "0111" =>
					hex3 <= "1000000";
					hex2 <= "1111001";
					hex1 <= "1111001";
					hex0 <= "1111001";
				when "1000" =>
					hex3 <= "1111001";
					hex2 <= "1000000";
					hex1 <= "1000000";
					hex0 <= "1000000";
				when "1001" =>
					hex3 <= "1111001";
					hex2 <= "1000000";
					hex1 <= "1000000";
					hex0 <= "1111001";
				when others =>
			 end case;
			 
			 case linha_cpu is
				when "0000" =>
					hex7 <= "1000000";
					hex6 <= "1000000";
				when "0001" =>
					hex7 <= "1000000";
					hex6 <= "1111001";
				when "0010" =>
					hex7 <= "1000000";
					hex6 <= "0100100";
				when "0011" =>
					hex7 <= "1000000";
					hex6 <= "0110000";
				when "0100" =>
					hex7 <= "1000000";
					hex6 <= "0011001";
				when "0101" =>
					hex7 <= "1000000";
					hex6 <= "0010010";
				when "0110" =>
					hex7 <= "1000000";
					hex6 <= "0000010";
				when "0111" =>
					hex7 <= "1000000";
					hex6 <= "1111000";
				when "1000" =>
					hex7 <= "1000000";
					hex6 <= "0000000";
				when "1001" =>
					hex7 <= "1000000";
					hex6 <= "0010000";
				when "1010" =>
					hex7 <= "1111001";
					hex6 <= "1000000";
				when "1011" =>
					hex7 <= "1111001";
					hex6 <= "1111001";
				when "1100" =>
					hex7 <= "1111001";
					hex6 <= "0100100";
				when "1101" =>
					hex7 <= "1111001";
					hex6 <= "0110000";
				when "1110" =>
					hex7 <= "1111001";
					hex6 <= "0011001";
				when "1111" =>
					hex7 <= "1111001";
					hex6 <= "0010010";				
				when others =>
					hex7 <= "1111001";
					hex6 <= "0000010";
			 end case;
    end if;
  end process;							

end struc;



