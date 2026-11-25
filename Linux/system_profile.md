# System Profile

Note: collected on macOS using sysctl, diskutil and sw_vers (macOS equivalents of lscpu, lsblk and free).

| Component | Specification |
|-----------|---------------|
| CPU Model | Apple A18 Pro |
| CPU Cores | 6 |
| Total RAM | 8 GB |
| Available RAM | 243 MB (unused) |
| Storage | 494.3 GB SSD |
| Operating System | macOS 26.6.2 (Build 25G83) |
| Kernel Version | Darwin 25.6.0 (arm64) |

## Binary Number Representation

### Decimal 75 to binary

- 75 ÷ 2 = 37 remainder 1
- 37 ÷ 2 = 18 remainder 1
- 18 ÷ 2 = 9 remainder 0
- 9 ÷ 2 = 4 remainder 1
- 4 ÷ 2 = 2 remainder 0
- 2 ÷ 2 = 1 remainder 0
- 1 ÷ 2 = 0 remainder 1

Reading the remainders from bottom to top gives **75 = 1001011** in binary.

### Binary 110101 to decimal

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|-----|---|---|---|---|---|---|
| Weight | 2^5 = 32 | 2^4 = 16 | 2^3 = 8 | 2^2 = 4 | 2^1 = 2 | 2^0 = 1 |

32 + 16 + 0 + 4 + 0 + 1 = **53**

### Why computers use binary

Computers use binary because electronic switches (transistors) reliably operate in two distinct states, on (1) and off (0), which minimizes electrical noise errors and simplifies hardware design.
