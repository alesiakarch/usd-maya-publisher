[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Tn7g_Mhz)

# Potentially a USD publisher
I am thinking of doing some sort of USD publisher, similar to what we had in the studio, so importing rigs and working on animation can actually make sense. I will be adding more research and specification as I go, this is just to fixate the idea, because I have no other for now. 

So, what if I could make a tool, that with a click of one button and a couple of settings would cache out the animation and make an anim layer in the appropriate folder (at least)? 
When setting things up for the group project, I tried using the Maya USD plugin to generate all the layers, etc. and thought that the layer editor was quite messy and required a lot of attention from the artist, who might not be trained to use it yet (also, is why we aren't using USD for our group project).
Maybe it can be a good idea to abstract this work into code, so when the artist is finished with their scene, they can publish it into a layer with minimal setup from their side, and the tool in turn will write out the USD file with all relevant dependencies, like rigs, and versioning, as well as create an anim layer from the latest character cache.

If the focus is on animation, it can be nice to also make a similar system for loading rigs. Maybe a simple database, from which the artist chooses the rig, the tool fetches the latest version of it, and references it into the USD stage (LAY layer can be provided separately). Then the artist works on the rig, and when they are done, use the tool to cache the character(s), and then publish the anim layer that pulls it all together. 
 



