# long long int leaf_example(
#   long long int g,
#   long long int h,
#   long long int i, 
#   long long int j
# ) {
#   long long int f;
#   f = (g + h) - (i + j);
#   return f;
# }

leaf_example:
  # push 3 values onto the stack
  addi sp, sp, -24
  sd x5, 16(sp)
  sd x6, 8(sp)
  sd x20, 0(sp)

  # do computations
  add x5, x10, x11
  add x6, x12, x13
  sub x20, x5, x6
  add x10, x20, 0

  # restores the stack
  ld x20, 0(sp)
  ld x6, 8(sp)
  ld x5, 16(sp)

  jalr x0, 0(x1)