# AES_126bit
Implementation of the Advanced Encryption System (AES) on the  Digilent Basys-3 FPGA using the Rijndael S-Box Algorithm on 128 bit for the College Major Project.

## Algorithm Used

[**Rijndael Algorithm**](https://www.techtarget.com/searchsecurity/definition/Rijndael)

The full AES process is based on this algorithm and it involves a total of 10 rounds with the following transformations: 
-SubBytes
-ShiftRows
-MixColumns
-AddRoundKey

## Breakdown of the Project

![Block Diagram of the Project](https://pub.mdpi-res.com/electronics/electronics-09-01665/article_deploy/html/images/electronics-09-01665-g001.png?1603099099)

## References

To fully understand AES and how we can go about implementing the same on FPGA, we went through multiple research papers and videos online.
- Digilent Basys-3 [Reference Manual](https://digilent.com/reference/_media/basys3:basys3_rm.pdf)
- Pranesh Prakash & Japreet Grewal, [“ How India Regulates Encryption”](https://eprint.iacr.org/2016/789) 
- Máire McLoone and J.V McCanny, "High Performance Single-Chip FPGA Rijndael Algorithm Implementations" [Ç.K. Koç, D. Naccache, and C. Paar (Eds.): CHES 2001, LNCS 2162, pp. 65–76, 2001.](https://link.springer.com/content/pdf/10.1007/3-540-44709-1_7.pdf)
- Kirat Pal Singh, Shiwani Dod, [“An Efficient Hardware Design and Implementation of Advanced Encryption Standard (AES) Algorithm”](https://eprint.iacr.org/2016/789.pdf)
- T. Jamil, "The Rijndael algorithm," in IEEE Potentials, [vol. 23, no. 2, pp. 36-38, April-May 2004, DOI: 10.1109/MP.2004.1289996.](https://ieeexplore.ieee.org/document/1289996)
