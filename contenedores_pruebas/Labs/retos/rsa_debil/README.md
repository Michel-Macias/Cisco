# Reto: RSA Débil - Descifrado de Comunicaciones

## Contexto del Escenario

Durante una auditoría de seguridad, has conseguido acceso al servidor de un desarrollador descuidado. En el directorio `/root/` has encontrado dos archivos sospechosos:

1.  `encrypted_data.txt`: Un archivo con datos cifrados.
2.  `decrypt.py`: Un script Python que parece estar relacionado con el cifrado.

Tu misión es analizar el sistema criptográfico utilizado, identificar su debilidad y recuperar el mensaje original.

---

## Archivos del Reto

### `encrypted_data.txt`
Contiene el mensaje cifrado. Cada línea representa un carácter del mensaje original, cifrado individualmente usando RSA.

### `decrypt.py`
El script de descifrado encontrado en el servidor. **Nota:** El script original apunta a un archivo en `/root/announcement_encrypted.md`. Deberás modificarlo para que apunte al archivo correcto o copiar `encrypted_data.txt` a esa ubicación.

---

## Objetivos de Aprendizaje

Al completar este reto, serás capaz de:

1.  **Comprender RSA básico:**
    *   `n = p * q` (módulo, producto de dos primos grandes)
    *   `e` (exponente público)
    *   `d` (exponente privado, derivado de `phi(n)` y `e`)
    *   Cifrado: `c = m^e mod n`
    *   Descifrado: `m = c^d mod n`

2.  **Identificar implementaciones RSA vulnerables:**
    *   ¿Qué pasa si `N` es primo en vez de producto de dos primos?
    *   ¿Por qué esto hace que calcular `phi(N)` sea trivial?

3.  **Ejecutar análisis de código en escenarios de post-explotación.**

---

## Pasos Sugeridos

### Paso 1: Analizar el script `decrypt.py`

```python
N = 115792089237316195423570985008687907853269984665640564039457584007913129640233
e = 65537

phi_n = N - 1  # <-- ¿Por qué N-1 y no (p-1)*(q-1)?
d = pow(e, -1, phi_n)

# ... resto del script
```

**Pregunta clave:** ¿Por qué el script calcula `phi_n` como `N - 1`?

### Paso 2: Verificar si N es primo

Usa Python o una herramienta online para verificar si `N` es un número primo:

```python
# Puedes usar sympy para una verificación rápida
from sympy import isprime
N = 115792089237316195423570985008687907853269984665640564039457584007913129640233
print(isprime(N))  # ¿Qué resultado obtienes?
```

### Paso 3: Entender la vulnerabilidad

Si `N` es primo:
*   `phi(N) = N - 1` (definición de la función totiente de Euler para primos)
*   Esto significa que cualquiera con `N` y `e` puede calcular `d` fácilmente.
*   **RSA roto.**

### Paso 4: Ejecutar el descifrado

Modifica el script para apuntar a `encrypted_data.txt` y ejecútalo:

```bash
# Desde el directorio del reto
python3 decrypt.py
```

---

## Solución (SPOILER)

<details>
<summary>Haz clic para ver la flag</summary>

```
FLAG{RSA_primo_debil_explotado}
```

**Explicación:**
El valor `N` utilizado en este sistema RSA **es un número primo**, no el producto de dos primos como exige una implementación segura de RSA. Esto permite calcular `phi(N) = N - 1` y derivar la clave privada `d` directamente de la clave pública.

</details>

---

## Recursos Adicionales

*   [Wikipedia: RSA (cryptosystem)](https://es.wikipedia.org/wiki/RSA)
*   [Khan Academy: RSA Encryption](https://www.khanacademy.org/computing/computer-science/cryptography/modern-crypt/v/intro-to-rsa-encryption)
*   [CryptoHack: RSA Challenges](https://cryptohack.org/challenges/rsa/)

---

## Autor

Este reto forma parte del laboratorio de pentesting del proyecto `contenedores_pruebas`.
