# Sequence_detector
in this we detect 101 Sequence using Moore and Mealy state machine in verilog code.
![seq](https://github.com/purveshthummar/Sequence_detector/assets/140932979/d003a8e1-be44-43f5-8f64-a3464a1537e6)

# Moore state machine
Moore machine is an FSM whose outputs depend on only the present state.Generally, it has more states than Mealy Machine.In Moore machines, more logic is required to decode the outputs resulting in more circuit delays. They generally react one clock cycle later that means react slower.There is less hardware requirement for circuit implementation.it is easy to design.output is synchonous with clock.

when input string of length is 'n' then output string length is 'n+1'.  

RTL Schematic :-

![moore](https://github.com/purveshthummar/Sequence_detector/assets/140932979/8177a008-5140-4c14-b0fb-8dcb9fc3f008)

Output Waveform :-
if we get output of data x = 01010101001010100101. then we have to write it in reverse menner (data=20'b10100101010010101010) because x is alwys assign from LSB (from right to left). Then we have to write loop thats we get whole 20-bit number one by one using right shift(>>). so our output should be y = 00010101000010100001 in there 6 one's because in input there are 6 '101' seqence.





