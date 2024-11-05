// Testing RAM16K

load RAM16K.hdl;
output-file RAM16K.out;
compare-to RAM16K.cmp;
output-list in%B1.16.1 load%B1.1.1 address%B1.14.1 out%B1.16.1;

set in 0000000000000000, load 0, address 00000000000000;
eval, output;

set in 0000000000001010, load 1, address 00000000000001;
eval, output;

set load 0;
eval, output;

set address 00000000000001;
eval, output;

set address 00000000000101;
eval, output;
