module FS4(
input [3:0] a,b,
input bin,
output [3:0] diff,
output bout
    );
   wire w1,w2,w3; 
    FS fs0(a[0],b[0],bin,diff[0],w1);
    FS fs1(a[1],b[1],w1,diff[1],w2);
    FS fs2(a[2],b[2],w2,diff[2],w3);
    FS fs3(a[3],b[3],w3,diff[3],bout);
    
endmodule
