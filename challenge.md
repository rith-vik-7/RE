# Reverse Engineering  

We were given with a ELF file, I went to gdb to debug that and found the function `strcmp` and got a string that it was comparing to.

![gdb](https://github.com/rith-vik-7/picture-dump/blob/main/Screenshot%20from%202021-02-14%2017-28-40.png)

Here, at <main+78>, we can find that each byte was taken from the string and was being subtrated with 7. So, by adding 7 to each byte of the string we found, we can get our flag.  

so..doing that with python we will get our flag `flag{y0u_G07_1t}`
