# fib (int n)
# if n == 0 return 0
# if n == 1 return 1
# return fib(n-1) + fib(n-2)

# n is in x10

addi x10, x0, 4 # n = 4

fib:
beq x10, x0, done # if x10 == 0, return
addi x5, x0, 1    # x5 = 1
beq x10, x5, done # if x10 == 1, return
addi sp, sp, -16  # allocated spaces for 2 words on stack
sd x1, 0(sp)
sd x10, 8(sp)     # save old n
addi x10, x10, -1 # n -= 1
jal x1, fib       # x10 = fib(n-1)
ld x5, 8(sp)      # x5 = old n
sd x10, 8(sp)     # save fib(n-1)
addi x10, x5, -2  # x10 = old n - 2
jal x1, fib       # x10 = fib(n-2)
ld x5, 8(sp)      # x5 = fib(n-1)
addi x10, x10, x5 # x10 = fib(n-1) + fib(n-2)
# cleanup
ld x1, 0(sp)      # x1 = return address
addi sp, sp, 16   # pops the allocated spaces

done:
jalr x0, 0(x1)