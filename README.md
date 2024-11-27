# Program for Calculating Dihedral Angles

This program calculates dihedral angles in PDB/PDBx files.  
It computes two types of angles: gamma (γ) and chi (χ).  

## Features:
- Processes both individual PDB/PDBx files and mixed streams of files.
- Supports data input from STDIN.
- Outputs results in TSV format to STDOUT.

## Usage:
1. To run the tests, simply execute the `make` command:
    ```bash
    pdbx-NA-torison-GX file1.pdb
    pdbx-NA-torison-GX file1.pdb file2.pdbx
    ```

## Angles:
- **χ (chi):**  
  - Pyrimidines: `O4′-C1′-N1-C2`  
  - Purines: `O4′-C1′-N9-C4`

- **γ (gamma):**  
  - `O5'-C5'-C4'-C3'`
 
# Automated Testing System

The repository also includes an automated testing system for validating the program's functionality.  

## Features:
- Automatically verifies the accuracy of calculated angles.
- Tests both standard input/output functionality and edge cases.
- Includes test datasets for PDB and PDBx files.

## Usage:
1. To run the tests, simply execute the `make` command:
    ```bash
    make
    ```

2. Test results are displayed in the console.
