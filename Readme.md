This github will contain scripts and files used to automatically build a vulnerable IoT docker.

The layout of the repo will be as follows:

Images 

 - docker X 
 - docker Y 

Features: 

- Feature 1 
  - config.cfg 

Json contains deps,  
ref to x86 and props of x86 (BE) 
Ref to arm and props of arm (LE) 

   - x86/binary.so 
   - x86/build.sh 
  
   - arm/binary.so 
   - arm/build.sh 

 - Feature 2 
 
Scripts:
- Services
  - ...
  - scripts that will start certain (vulnerable) services
- Varia
  - ...
  - scripts to help setup the device
- LoneVulnerablilities
  - LanguageFaults
    - ...
    - scripts that introduce specific faults implemented in different languages
  - ...
  - scripts that introduce a vulnerablity into the system
		
