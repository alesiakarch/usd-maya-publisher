

# USD publishing Tool


https://github.com/user-attachments/assets/b69945a3-6ddf-432c-b65b-43455c7672d4



I set out to make some sort of USD publisher, similar to what we had in the studio, so importing rigs and working on animation in USD can actually make sense. 

This tool was conceived with a multiple DCC pipeline in mind, where Maya workflow ends at the animation stage and then all the data is passed on to Houdini (or other DCC of choice) to do CFX, Lighting, etc.
Hence, come in the USD, which can allow less painful dataflow between departments and, more importantly, non-destructive editing.
Therefore, this plugin is designed to output an animation layer usda file, which can be passed on to further departments, but not necessarily facilitate further workflow in Maya after the animation stage. 

When setting things up for the group project, I used the Maya USD plugin to generate all the layers, and thought that the layer editor was quite messy and required a lot of attention from the artist, who might not be trained to use it yet or not see it as their priority.
It should be the pipeline team's job to abstract this work into code so that when the artist is finished with their scene, they can publish it into a layer with minimal setup from their side. The tool, in turn, will write out the USD file with all relevant dependencies, like rigs and versioning, as well as create an anim layer from the latest character cache.

# Installation 
The plugin has an installer script that will generate a .mod file in the relevant maya/module folder. 

1. Run Installer.py from the plugin, where the script is based. It can be done via bash terminal or by running the python file itself
2. Launch Maya, navigate to Windows > Settings/Preferences > Plug-in manager, search for the new plugin and click Load.

Alternatively, if the installer isn't behaving, the user can load the plug-in manually, but this will need to be done at every new Maya session:
1. Windows > Settings/Preferences > Plug-in manager > Browse
2. Navigate to the plugin directory and insdie usd_publisher_plugin select usd_publisher.py
3. This will load it into the Plug-in managed under the Other Registered Plugins

When the plugin is loaded, a new Pipeline menu should appear at the top, next to the Arnold menu and a message "Plugin successfully loaded" in the script editor. 

![image](https://github.com/user-attachments/assets/b82ef312-d9bb-488a-8b03-3194892ccda3)

# Usage

The tool consists of three buttons with connected functionality, but they can be used separately if the conventions are met. 
For readability purposes, all usd files, except for caches, have .usda extension.

## Prerequisite
1. A stage.usda file - this is the main usd file that will contain all the layers, e.g. LAY layer.
   The tool uses path to stage.usda as a root directory, so everything will be written out relative to it.
   The idea is to have an encapsulated layer structure per shot (stage) like so:
   ```
   Shot_0110_0110/
       ├── stage.usda
       ├── RIG
       │   └── RIG_layer.usda
       ├── ANI
       │   ├── cache/
       │       └── cache_001.usd
       │   └── layer/
       │        └── ANI_layer.usda
       ├── CFX/*
       ├── LAY/*
       └── LIT/*
   * - example folders for other departments
   ```
2. This stage.usda file must be loaded into a Maya scene. Maya scene may be saved, but doesn't have to be for the tool to work, as it relies only on .usda
3. When working on animation, SAVE before caching the animation, as it will load in the rig references. After caching, revert to the saved scene to continue working.
4. Versioning has a limit, about a 100 for identical rigs and 100 caches of one rig. This is to avoid infinite loops when generating namespaces, and also to keep the versions in a reasonable size.
5. It is always assumed that there is only one Usd stage in the scene. The tool will only pick up the first proxyShape and get on with it.
   
## Load Rig

As name suggests, Pipeline > Load Rig button loads rigs.
1. Browse > Select .ma or .mb rig from the file explorer
2. Load Rig!
   
   ![image](https://github.com/user-attachments/assets/169e34a1-3840-481d-9418-4beb8fbcf53b)
   
This will pick up or create the RIG layer for the stage, make a /rigs Xform to store rigs under and append the selected rig as a MayaReference. 
Now rigs are part of the USD hierarchy, ready to work with. 

## Cache Anim

Pipeline > Cache Anim is used to export animated rigs as usd data. First, the tool will pull all rigs under the /rigs prim of the loaded stage that it can find.
This will create ANI directory with cache subdir in it to store caches. All caches will be versioned per rig and are designed to be separate per character.
0. SAVE THE SCENE!
1. Select rigs to cache. "Select All" will select or deselect everything at once.
2. "Custom Framerange" allows setting a different framerange than what was picked up from the scene. The automatic values are determined by the start and end times.
3. "Euler filter" enables or disables euler filter on usd when caching. The default value is 0.
4. Cache Anim!
5. Optional: Reload to the scene you saved before caching to continue working.
   
![image](https://github.com/user-attachments/assets/9d070a14-12c3-46a0-89dc-d0b7e606c266)

## Create ANI Layer

Pipeline > Create ANI layer fetches all available caches from ANI/cache, creates a new ANI usd layer, references caches into it and saves into ANI/layer.
Each ANI layer will be saved as a new version, which enables rolling back a version if needed. Selecting caches individually enables updating only the requested characters,
instead of re-caching the whole shot.

1. Select which caches to make a layer of. "Assemble Latest Cache" will select caches with the highest version number from all available rigs.
2. Cache ANI Layer!

![image](https://github.com/user-attachments/assets/ad544a49-3497-484f-8d66-32c9467d57fc)

## Outcome

After ANI layer is created, it should be available to load and view in USDViewer or other DCC packages like Houdini, carrying the animation data down the pipeline. 

![image](https://github.com/user-attachments/assets/a04361d6-03eb-43f1-82af-93bf534b7505)

### Extra

This repo includes two test Maya projects - one empty with only the stage.usda and some test assets, and one already run a couple of times through the pipeline with the caches and layers available.

# Documentation

HTML pages for the plugin modules are available in the docs/build folder of this repo. Generated with Sphinx.

# Further Developments

This project has the potential to be extended into a larger pipeline, with similar tools made for other departments like LAY and CFX or by integrating databases for rigs, assets, etc. It would be interesting to see it work together with a properly generated project structure.

Of course, the source code and usability of this plugin can also be improved, based on real-life user scenarios, since the available tool targets mostly "default" usage, as if in a settled pipeline.

Next steps - extend the plugin to initialised the scene by building the shots and work with LAY layers.


 



