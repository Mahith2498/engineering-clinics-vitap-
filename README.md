# engineering-clinics-vitap-

This consists of the designs related to ecs 

In Modern VLSI Design, IP (Intellectual Property Block) design is based on the principles of Low die area, Low power consumption & High performance, IPs like Multiply and Accumulate (MAC) Units are mainly used in Digital Signal Proceeseors ( DSPs), Hardware Accelerators (HW) IPs etc.... 

When we discuss about MAC unit we mainly focous on the Multiplier unit (Does the binary multiplication of 2 binary numbers), If each of the binary number is of N bit then the resulting product will be of 2N bits. 

In this project we are using the HDLs(Hardware Descriptiuon Languages)  so we shall only concentrate only on the Low power and fast performance ( Only either of the factors can be considered ). 

In Multipliers we have 3 different types  Serial Multiplier Architecture, Parallel Multiplier Architecture & Serial - Parallel Multiplier Architectures. 

1) Serial Multiplier Architecture considers the less Hardware and small die area and performance ( Speed) will be less compared to the other two
2) Parallel Multiplier Architecture is good in terms of performance and has some disadvantages in-terms of power consumption ( Currenlty working on the better power saving). 
3) Serial-Parallel takes care of both pros and cons in the Serial Multiplier Architecture and Parallel Multiplier Architecture.

In modern IPs the main problem is performance so while using the multipliers we will have lot of problem with adding of partial products so if we are unable to reduce this problem then we have to comprimise with the speed of your IP. 

After many R&D work in this problem they came with the idea of using a modern digital circuit called as Compressor( Superpower behind the modern Multipliers such as wallace tree or daada tree). 

The name Wallace tree or daada tree itself tells that these are Tree strucutred mulipliers and when we mention them as the tree structured mulipliers we have to consider about the number of stages in which we are getting the output(Final Product), while we design a classical wallace tree muliplier (Say some 4 * 4) it needs some 5 to 6 or sometimes more than that depending upon the way you are considering the full adders and half adders. But this Superpower circuit can make this happen in 3 steps itself. 

Here is why it is called as superpower because it makes the perfomrmace to increase  by n times and if we can use some low power IPs we can also reduce the power to little bit. BUT NOT COMPLETLY. 
