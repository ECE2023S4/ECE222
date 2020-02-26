# void swap (long long int v[], size_t k) {
#   long long int temp;
#   temp = v[k];
#   v[k] = v[k + 1];
#   v[k + 1] = temp;
# }

# x10: x
# x11: k
# x5: temp

swap:
  slli x6, x11, 3 # x6 = k * 8
  add x6, x10, x6 # x6 = v + k * 8
  ld x5, 0(x6)    # x5(temp) = v[k]
  ld x7, 8(x6)    # x7 = v[k+1]
  sd x7, 0(x6)    # v[k] = x7 (v[k+1])
  sd x5, 8(x6)    # v[k+1] = x5 (v[k])
  jalr x0, 0(x1)  # return to calling routine