/*
* Unreachable State Example:
* Create an inductive case for x1 <= 6
* Fails for x1 = 6 which is not reachable from initial state x1 = 0
*
* @author Adrian Molofsky
* @version 11/06/23
*/

logic [3:0] x1 = 0;
logic [3:0] x2 = 0;
always @(posedge clk)
begin
  x2 <= x1 + 1;
  x1 <= (x1 + 1) % 5;
end
