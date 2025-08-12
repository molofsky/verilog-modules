/* 
* Verilog function to check if a four-bit input is prime.
*
* @author Adrian Molofsky
* @version 1/6/23
*/
module prime(in, isprime); 
	input [3:0] in;
	output reg isprime;
	
	always @* begin
		case(in)
		1, 2 , 3, 5, 7, 11, 13: isprime = 1’b1;
		default: isprime = 1’b0;
		endcase
	end
endmodule
