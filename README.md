## Hackfortress CTFd plugin
This component of the UWF Cyber Security Clubs hackfortress competition implementation allows 
for exchanging scoring data with the [hackfortress-exchanger](https://github.com/UWFCybernauts/hackfortress-exchanger)
utilizing gRPC. This component integrates into CTFd as a plugin and hosts a gRPC server that the
[hackfortress-exchanger](https://github.com/UWFCybernauts/hackfortress-exchanger)
connects to. Any communication from the SourceMod side (hackfortress-exchanger) goes through the gRPC connection 
and get's recieved by this component. This component is intended only to return scoring data over gRPC when requested to do so.

### Reasons for this component
We have implemented these components this way in order to avoid some issues that were occuring due 
to libstdc++, parrellization in SourceMod/TF2, and reconfiguring of entire libraries to match
compatible compile targets enforced by SourceMod/TF2. This method of implementation allows
any method of retrieving scoring data to be used on the SourceMod/TF2 side so long as they use gRPC.

### Build instructions
I mean it's python, but use the Makefile to generate the gRPC source components using `make`

### Authors
This component of UWF Cyber Security Club's Hackfortress Implementation is created and maintained 
by:
* Michael Mitchell (@AWildBeard)