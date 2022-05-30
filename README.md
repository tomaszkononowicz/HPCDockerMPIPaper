# Performance Assessment of using Docker for Selected MPI Applications in a Parallel Environment

**Authors:** Tomasz Kononowicz and Paweł Czarnul

Directories:
 - Dockerfiles
Contains source code of `Dockerfiles` using in publications for create images in V7 and V9 versions. Due to the update or the unavailability of specific packages, it may be no possible to build images from Dockerfiles. Please contact with me in that situation, I have got built image.
**Important:** For ease of research purposes, all created containers used the same private and public SSH key. Never do this in a production environment.
 - Test starters
Contains programs, hostfiles, and helper scripts used to run tests. The `ignored` suffix in scripts means that this is a version that does not use invalid nodes in our environment.
 - Raw results
Contains raw text files which contains execution times. All files in `Not processed` directory have not been modified, there is raw output from test executions. The files in `Processed` directory do not contain incorrect results and unnecessary content, only the name of the test and results.

`Raw results` directory and `Results and analysis - draft.xlsx` file contain SPMD, SPMDv2, SPMDv3 and SPMDv4 program names. These versions of SPMD program only differ in the value of the COMPCOEFF flag. The greater the value, the more time for calculations and less for communication. 

**Important:** SPMD in publication and `Results and analysis.xlsx` means SPMDv4 in `Raw results` directory and `Results and analysis - draft.xlsx`