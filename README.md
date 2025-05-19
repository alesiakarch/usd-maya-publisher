[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Tn7g_Mhz)

# USD publishing Tool
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

The tool consists of three buttons with 

# Documentation

HTML pages are available in the docs/build folder of this repo. Generated with Sphinx.

# Initial Design (TLDR; 3 buttons that do stuff)

Okay, so lets add some design thoughts. I had a play with a native USD plugin in Maya, just to get from a stage assembly to animation and get refresher on what I was actually doing. 
Assembing usd stages, seems quite straight forward, even if a little finiky (being afraid to add things to the wrong layer, etc). 
Then, I went through the process of how to add rigs to the stage and follow through the animation.



### So my pet peeves with the current Maya USD plugin when it comes to animation:

Everything should be already set up for the animator to work with, so the rigs Xform should either come with shotbuild or get created automatically when loading a rig. This will require a "Load Rig" button that will check if the rig Xform is in place and the load the rig in with correct namespace. From there, it is quite okay; the animator can do their work while the rig is Maya data, but then they will need to somehow save it. 
Caching is a bit of a let down because, first, it removes the ability to edit the animation as it turns it into USD data (needs to be counterscripted), and caching has too many settings that might go wrong (they need to be a preset). 
Ideally, you don't want the animator poking in your scene hierarchy, so a small shelf/toolbar solution with relevant buttons would be preferable. 
The animator needs to load the rig (potentially from a database), cache each individual character and assemble animation layer out of all the caches. 
All of these tools also need to be fool proof - each configuration decided and locked, with the adjustments being available in plain language. 

So

## Load Rig button:
- Initiates either a file explorer or a database with available rigs for the project
- After user selects the rig to load, checks for "rigs" Xform, creates one if it doesnt exhist
- Performs "Add Maya reference" to the rigs Xform
- As a part for "Add Maya ref" sets a namespace based on the name of the rig, checks if it is available, if it isnt, adds a version (e.g. "Ball_rig_001" exists, adding "Ball_rig_002")

## Cache Anim button:
- Select the rig in the USD stage
- The button goes "Cache to USD" and sets the settings to what is correct
- Checks the name of the rig and names the cache file according to the naming convention in the correct folder for the character. 
- If the name already exists, adds a version (e.g "Ball_ANI_cache_v001" exists, adding "Ball_ANI_cache_v002")
- This will have to include frame range lock, so it is always consistent with the shots' frame range
- Does "Edit as Maya data" to the rig that has turned into the usd to enable the animator to work further

## Create Anim Layer button:
- Searches the relevant shots folder ("ProjectName_0220_0110" for example)
- Navigates the the caches folder ("ProjectName_0220_0110/ANI/cache/..")
- From each character folder, picks up the latest cache.
- Generates a USD file that references all picked-up files and saves it as an ANI layer

### Further Developments

This project has potential to be extended to a larger pipeline, with similar tools for other deparments like LAY and CFX, as well as integrating with project structure generation and databases for assets, etc.


 



