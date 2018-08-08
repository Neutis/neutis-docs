Neutis features tamper-resistant dedicated crypto chip (ATECC508A) for storing cryptographic keys, unique ID,
random number generation and more. The ATECC508A can generate high-quality FIPS random numbers, each of them
is guaranteed to be essentially unique from all numbers ever generated on this or any other device.

This examples demonstrates how to generate random numbers.

## Package building and installation

The first step is to build a package with ```CryptoAuthLib``` support and ```random_number``` application.
If you have not yet build any images or packages with Yocto, visit [this page](../yocto/tutorial.md).
If you have already set up build host, then navigate to ```neutis-image``` directory.

Open ```meta-layers/meta-emlid-neutis-examples/recipes-core/images/neutis-image.bbappend```
and uncomment the following line:

```bash

IMAGE_INSTALL_append += "secure-chip-example"


```

Build the ```secure-chip-example``` package:

```bash

bitbake secure-chip-example


```

Find the package:

```bash

find tmp/deploy/ipk/ -name "*secure-chip*.ipk"

```

You should find ```secure-chip-example_0.1-r0_aarch64.ipk```.

Copy ipk file to Neutis:

```bash

rsync -avz secure-chip-example_0.1-r0_aarch64.ipk root@192.168.2.15:/home/root

```

where **192.168.2.15** is Neutis IP address.

Copy ipk file with rsync or scp to Neutis and install with the following command:

```bash

ls secure-chip*.ipk | xargs opkg install

```

## Testing

Execute ```random_number``` and you should get the random 32 byte number:

```bash

56 df cd 39 5f e1 da f1
80 fa 0c e9 b1 3f 45 a6
e2 64 8e c7 4d 0d 59 a0
15 48 ca 35 83 1b eb b0

```

## The program explained

The ```random_number``` is actually the following compiled C program:

```c

#include <stdio.h>
#include <cryptoauthlib.h>

ATCAIfaceCfg g_iface_config = {
    .iface_type        = ATCA_I2C_IFACE,
    .devtype           = ATECC508A,
    .atcai2c           = {
        .slave_address = 0xC0,
        .bus           = 0,
        .baud          = 400000,
    },
    .wake_delay        = 1500,
    .rx_retries        = 20
};

int read_atecc_random_number(uint8_t* random_number)
{
    ATCA_STATUS status = atcab_init(&g_iface_config);

    if (status != ATCA_SUCCESS) {
        printf("atcab_init() failed with ret=0x%08d\r\n", status);
        return -1;
    }

    status = atcab_random(random_number);;
    atcab_release();

    if (status != ATCA_SUCCESS) {
        printf("atcab_random() failed with ret=0x%08d\r\n", status);
        return -1;
    }

    return 0;
}

int main(void)
{
    uint8_t random_number[32];

    if (read_atecc_random_number(&random_number) != 0)
        return -1;

    for (int i = 0; i < 4; i++){
        for(int j = 0; j < 8; j++){
             printf("%02x ", random_number[i * 8 + j]);
        }
        printf("\n");
    }
    return 0;
}

```

1) Include the cryptoauthlib.h header file to get access to CryptoAuthLib API.

2) Call atcab_init() with a pointer for a configuration for an ATECC508A I2C
interface.

3) Call atcab_random() passing a pointer to uint8_t array to receive the 32 byte random number.

4) Print the generated number.

## Where to go next

The complete ATECC508A data sheet and CryptoAuthLib API can be found
[here](http://ww1.microchip.com/downloads/en/DeviceDoc/20005927A.pdf).
Beware of some functions and read carefully the documentation as you may lock some data slots
so as you cannot use them anymore.
