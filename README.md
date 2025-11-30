# Hello Project

This project is a simple "Hello, World!" program that demonstrates how to build a C project using two different build systems: Autotools and CMake.

## Building with Autotools

To build this project with Autotools, you will need to have `autoconf` and `automake` installed.

1.  **Generate the `configure` script:**
    ```bash
    aclocal
    autoconf
    automake --add-missing
    ```

2.  **Run the `configure` script:**
    ```bash
    ./configure
    ```

3.  **Build the project:**
    ```bash
    make
    ```

4.  **Run the executable:**
    ```bash
    ./hello
    ```

5.  **Clean up the generated files:**
    ```bash
    make clean
    ```

## Building with CMake

To build this project with CMake, you will need to have `cmake` installed.

1.  **Create a `build` directory:**
    ```bash
    mkdir build
    cd build
    ```

2.  **Run `cmake`:**
    ```bash
    cmake ..
    ```

3.  **Build the project:**
    ```bash
    make
    ```

4.  **Run the executable:**
    ```bash
    ./hello
    ```

5.  **Clean up the generated files:**
    ```bash
    cd ..
    rm -rf build
    ```
