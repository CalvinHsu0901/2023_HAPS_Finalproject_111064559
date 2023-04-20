# 2023_HAPS_Finalproject_111064559
1.Introduction:
JEPG Decoder implementation through Synopsys HAPS design flow.

The source of JEPG Decoder is from [https://github.com/ultraembedded/core_jpeg]

Auto partition into two FPGA in HAPS.  

2.Block Diagram:  
![block_diagram](block_diagram.png)  

3.Schematic:  
![JPEG DECODER](schematic.png)  
ua:  
![ua_schem](ua_schem.png)  
ub:  
![ub_schem](ub_schem.png)   

4.Timing Report:  
ua:  
![ua](ua1.png)  
ub:  
![ub](ub1.png)  

5.Conclusion:  
I finished the HAPS partition flow with two fpga(ua,ub) through rewriting the .tss, .pcf, .fdc to meet the JEPG decoder design without instaces assignment in .pcf.
Therefore, protocompiler100 would do the partition by itself automatically.
Also, I assigned all top module IO pins on HAPS in .pcf for design verification and real implementation.
In my experience of the partion flow, HAPS is very powerful and easy to use tool to accomplish design verification or implementaion especially for very large scale design such as SOC.
Although the design I implemented is just a small decoder, I learned a lot about HAPS and its flow to help me finsih the target.
It is a great practice with the course by Synopsys.
