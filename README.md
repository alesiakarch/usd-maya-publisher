[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Tn7g_Mhz)

# Potentially a USD publisher
I am thinking of doing some sort of USD publisher, similar to what we had in the studio, so importing rigs and working on animation can actually make sense. I will be adding more research and specification as I go, this is just to fixate the idea, because I have no other for now. 

So, what if I could make a tool, that with a click of one button and a couple of settings would cache out the animation and make an anim layer in the appropriate folder (at least)? 
When setting things up for the group project, I tried using the Maya USD plugin to generate all the layers, etc. and thought that the layer editor was quite messy and required a lot of attention from the artist, who might not be trained to use it yet (also, is why we aren't using USD for our group project).
Maybe it can be a good idea to abstract this work into code, so when the artist is finished with their scene, they can publish it into a layer with minimal setup from their side, and the tool in turn will write out the USD file with all relevant dependencies, like rigs, and versioning, as well as create an anim layer from the latest character cache.

If the focus is on animation, it can be nice to also make a similar system for loading rigs. Maybe a simple database, from which the artist chooses the rig, the tool fetches the latest version of it, and references it into the USD stage (LAY layer can be provided separately). Then the artist works on the rig, and when they are done, use the tool to cache the character(s), and then publish the anim layer that pulls it all together. 

# Initial Design (TLDR; 3 buttons that do stuff)

Okay, so lets add some design thoughts. I had a play with a native USD plugin in Maya, just to get from a stage assembly to animation and get refresher on what I was actually doing. 
Assembing usd stages, seems quite straight forward, even if a little finiky (being afraid to add things to the wrong layer, etc). 
Then, I went through the process of how to add rigs to the stage and follow through the animation.

## Workflow:
1.	Have your shot built (stage file loaded with all the layout and stuff)
2.	Add the Xform for rigs because that’s where you want to store all ur characters (can be added automatically at LAY stage or has to be scripted when the)
3.	Do "add maya reference" to the rigs Xform (need to manually locate the file and change the namespace)
4.	Animate the thing
5. Cache to USD on the Maya rig - too many settings, never know what to press
6. Rig turns to USD data. If you want to adjust further, edit as Maya data (currently breaks my rig)

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

I see two options for this: 
1. Script the commands required to load and cache animation manually (too easy to be true)
2. Manually generate the USD files in the convention and state that I want.

This might actually be a hybrid solution, as for example, the Load Rig button is basically just running maya commands, while anim layer most likely will have to be published separately, hence - generated. 
 



