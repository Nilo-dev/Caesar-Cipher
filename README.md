# Caesar Cipher

![Static Badge](https://img.shields.io/badge/Ruby-3.3.1-282828?style=flat&logo=ruby&logoColor=282828&labelColor=CC342D) ![Static Badge](https://img.shields.io/badge/RSpec-3.13-282828?style=flat&logo=rubygems&logoColor=282828&labelColor=f53e5c)

#### _Assignment_ 
From Wikipedia:

> In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

**Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:**
```sh
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```
**Quick Tips:**

> You will need to remember how to convert a **string** into a **number**.
> Don’t forget to wrap from **z** to **a**.
> Don’t forget to keep the **same case**.
