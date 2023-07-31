# Sequence_detector
in this we detect 101 Sequence using Moore and Mealy state machine in verilog code.
![seq](https://github.com/purveshthummar/Sequence_detector/assets/140932979/d003a8e1-be44-43f5-8f64-a3464a1537e6)

# Moore state machine
Moore machine is an FSM whose outputs depend on only the present state.Generally, it has more states than Mealy Machine.In Moore machines, more logic is required to decode the outputs resulting in more circuit delays. They generally react one clock cycle later that means react slower.There is less hardware requirement for circuit implementation.it is easy to design.output is synchonous with clock.

when input string of length is 'n' then output string length is 'n+1'.  

Output Waveform :-

if we get output of data x = 01010101001010100101. then in testbench we have to write it in reverse menner (data=20'b10100101010010101010) because x is alwys assign from LSB (from right to left). Then we have to write loop thats we get whole 20-bit number one by one using right shift(>>). so our output should be y = 00010101000010100001 in there 6 one's because in input there are 6 '101' seqence.
![moore_out](https://github.com/purveshthummar/Sequence_detector/assets/140932979/08573c2a-287a-48e7-9294-4b7762fab44d)

as shown as above we only get 5 high, reason is the first '101' sequence is not counted because reset. when reset is high any input will not influence the system.
and can be seen here output is delayed by one clock cycle because in order to system to respond it has wait for raising edge to occurs, so Y is change value wen positive edge occurs this is happen in basically moore system but mealy system we  get different that we will see later.

# Mealy state machine
A Mealy Machine is an FSM whose output depends on the present state as well as the present input.Generally, it has fewer states than Moore Machine.Less number of states are required. They react immediatly no need to wait next clock cycle that means react faster.There is more hardware requirement for circuit implementation.It is difficult to design.output is Asynchronous with clock.

when input string of length is 'n' then output string is also 'n'.

Output Waveform :-

testbench coading is same as moore machine no difference.
![mealy out](https://github.com/purveshthummar/Sequence_detector/assets/140932979/dc7feaed-932c-4b68-9d42-f10a76db344f)
output is same as moore machine the only difference is there are respond immediately no need to wait rising edge trigger. output is immediatly trigger to high without need to wait rising edge. in mealy machine outputis directly depends with input as long as there's respond immediatly even though clock is not in rising edge stage.





