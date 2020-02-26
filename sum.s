# long long int sum(long long int n, long long int acc) {
#   if (n < 0) return sum(n - 1, acc + n);
#   return acc;
# }

sum:
  ble x10, x0, sum_exit
  add x11, x11, x10
  addi x10, x10, -1
  jal x0, sum

sum_exit:
  addi x12, x11, 0
  jalr x0, 0(x1)