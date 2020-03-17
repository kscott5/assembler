# Assembly Language
Assembly is the low level language used with devices CPU or processor programming, specifically INTEL, ADM and others. It's the instruction set your favorite high level language compiler translate your source code from. 

The fact is it was one of the most difficult and intriging elective courses, Mainframe Assemble, offer challenge me a novice inexperience computer science major. Today, I think most software developers or engineer would prefer C#, Java, NodeJS, Javascript, HTML, C++ and others. But here, it's another example of self motivation or my love/hate relationship with coding. Better yet, critical thinking, debugging and resource identification etc.

And yes, I did not forget the reduced processor instruction set [risc](https://riscv.org/) created for device, presummed smart.

** Opinion: .asm code should not include extern C/C++ references, aka printf. C/C++ compiler optimizes the code to assembler. Its a nice to have but just my opinion.

Fun fact: A previous job title I had was 'Component Assembler Builder' and there was no assembly code, and this is simply for entertainment.

- [Intel Software Developer](https://software.intel.com/en-us/articles/introduction-to-x64-assembly)
- [Arm Developer](https://developer.arm.com)  
- [Arm Tools](https://developer.arm.com/tools-and-software/embedded/arm-compiler/downloads/version-6)  
- [NASM The Netwide Assembler](https://www.nasm.us/doc/)  

# Compiler, link and test. 
```
mkdir ./build
nasm -f elf64 -o ./build/[output_file_name] input_file.asm
ld -m elf_x86_64 -s -o ./build/[file_name] ./build/[output_file_name]
./build/[file_name]
```
