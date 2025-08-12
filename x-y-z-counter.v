/* 
* Verification Example:
* The value of y is always supposed to be x + 1
* The value of z is always supposed to be y + 1
*
* @author Adrian Molofsky
* @version 10/31/23
*/

input logic a;
logic [1:0] x, y, z;

always @(posedge clk) begin
  if (reset) begin
      x <= 0; y <= 1; z <= 2;
  end
  else if (a == 0) begin
      z <= y + 2;
      y <= z;
      x <= y;
  end
end
