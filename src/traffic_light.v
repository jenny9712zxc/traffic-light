module traffic_light(clk,rst,pass,R,G,Y);
input clk,rst,pass;
output R,G,Y;
reg R,G,Y;
reg [1:0]state;
reg [4:0] count;
parameter red =2'b00, green = 2'b01, yellow = 2'b10; 

always @(posedge clk or posedge rst)
begin
  if(rst)
    begin
      state <= red;
      count <= 0;      
    end
    
  else if(pass && state != green)
    begin
      state <= green;
       count <= 0;     
    end
  
   else
      begin
        if(state == red && count == 5'd9)
          begin
            state <= green;
            count <= 0;
          end
        else if(state == green && count == 5'd11)
          begin
            state <= yellow;
            count <= 0;
          end
          else if(state == yellow && count == 5'd4)
          begin
            state <= red;
            count <= 0;
          end
          else
            begin
            count <= count+1;
          end
      end    
end

always @(state)
begin
  if(state == red)
    begin
      R = 1;
      G = 0;
      Y = 0;
    end
    else if(state == green)
    begin
      R = 0;
      G = 1;
      Y = 0;
    end
    else
      begin
      R = 0;
      G = 0;
      Y = 1;
    end
end

endmodule







