

N = 115792089237316195423570985008687907853269984665640564039457584007913129640233
e = 65537

phi_n = N - 1
d = pow(e, -1, phi_n)

decrypted_message = ""
with open('encrypted_data.txt', 'r') as f:
    for line in f:
        encrypted_char = int(line.strip())
        decrypted_char = chr(pow(encrypted_char, d, N))
        decrypted_message += decrypted_char

print(decrypted_message)
