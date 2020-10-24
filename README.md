# OSLShaders
My OSL Shaders from basic to advance


## How to use OSL Shaders in Maya as Arnold Shader
- copy **mtoa.mod** from your maya installation (Arnold installation) module folder
- create **modules** folder in **user/documents/maya/<version>/**
- put **mtoa.mod** file in **modules** folder
- add this line to the end of the file:
  ARNOLD_PLUGIN_PATH += /your/path/of/osl/shaders
- save the file
- restart maya

Maya will detect all **.osl** files you have in your added folder(s)

### Sample OSL file:
- create a file named **hda.osl** in the shader folder (sample is from Arnold website)
add this to it:
```
shader hda_01(
    color Cin = color(0, 0, 0),
    float exponent = 1,
    output color Cout = color(0, 0, 0))
{
    Cout = Cin * exponent;
}
```

- restart maya
- in hypershade window hit **tab** button
- write **aiHda** and create that node
- you can now use this shader with connecting to your arnold materials like **aiStandardSurface**

### compile shader
- add your **arnold/bin** in Arnold installation folder to your environment variables
- go to shaders folder
- open terminal
$ oslc yourshader.osl
- it will create **.oso** file that is compiled version of your shader , you can use it

Good luck!