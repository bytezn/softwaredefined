# Software Defined Datacenter ARM Templates provided by Lawrance Reddy


This repo contains infrastructure as code examples of software defined datacenters. From start to finish, these examples are layered and a stepped up approach to building complete scenarios.
You are free to download this code and reuse them as you see fit.
This codebase is made up of certain snippets from the Azure quickstart templates, but with completely new features and capabilities. 


It is important to node that as you use these templates, it is important to understand the syntaxes and parameters required. incorrect parameters used will result in the deployment failing.

## Files, folders and naming conventions

1. Every deployment template and its associated files must be contained in its own **folder**. Name this folder something that describes what your template does. Usually this naming pattern looks like **appName-osName** or **level-platformCapability** (e.g. 101-vm-user-image) 
 + **Required** - Numbering should start at 101. 100 is reserved for things that need to be at the top.
 + **Protip** - Try to keep the name of your template folder short so that it fits inside the Github folder name column width.
2. Github uses ASCII for ordering files and folder. For consistent ordering **create all files and folders in lowercase**. The only **exception** to this guideline is the **README.md**, that should be in the format **UPPERCASE.lowercase**.
3. Include a **README.md** file that explains how the template works. 
 + Guidelines on the README.md file below.
4. The deployment template file must be named **azuredeploy.json**.
5. There should be a parameters file named **azuredeploy.parameters.json**. 
 + Please fill out the values for the parameters according to rules defined in the template (allowed values etc.), For parameters without rules, a simple "changeme" will do as the acomghbot only checks for syntactic correctness using the ARM Validate Template [API](https://msdn.microsoft.com/en-us/library/azure/dn790547.aspx).
6. The template folder must contain a **metadata.json** file to allow the template to be indexed on [Azure.com](http://azure.microsoft.com/). 
 + Guidelines on the metadata.json file below.
7. The custom scripts that are needed for successful template execution must be placed in a folder called **scripts**.
8. Linked templates must be placed in a folder called **nested**.
9. Images used in the README.md must be placed in a folder called **images**. 
10. Any resources that need to be setup outside the template should be named prefixed with existing (e.g. existingVNET, existingDiagnosticsStorageAccount).

