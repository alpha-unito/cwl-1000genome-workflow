# 1000 Genome application in C++

This project provides a C++ implementation of the 1000 Genomes applications, originally developed in Bash and Python Please note that some external libraries are required to build the application, most notably, [Boost](https://www.boost.org/). On Debian-based systems, Boost can be installed with:

```bash
sudo apt install libboost-all-dev
```

## Compile 

```bash
mkdir build
cd build
cmake ..
make
```

## Credits


The applications were implemented  in C++ by:
_Martinelli, A.R., Torquati, M., Aldinucci, M., Colonnelli, I., Cantalupo, B.: Capio: a middleware for transparent i/o streaming in data-intensive workflows. In: 2023 IEEE 30th International Conference on High Performance Computing, Data, and Analytics (HiPC). IEEE, Goa, India (2023). [doi:10.1109/HiPC58850.2023.00031](https://doi.org/10.1109/HiPC58850.2023.00031)_.