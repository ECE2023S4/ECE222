# a0: d
# a1: k

rroatte:
  add t0, x0, a0  # t0 = d
  srl t0, t0, a1  # shift d(t0) by k
  addi t1, x0, 32 # add 32 to t1
  sub t1, t1, a1  # 32 - k
  sll t2, a0, t1  # d << (n-k)
  or a0, t0, t2   # concatenate two part
  jalr zero, 0(ra)