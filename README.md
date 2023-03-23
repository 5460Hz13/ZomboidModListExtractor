# ZomboidModListExtractor

Gather Names to file allows for collection of file names from mod folder to populate text file for the modlist creation for Zomboid servers.
Gather IDs to File allows for collection of "/*/mods/mod.info"'s value of the id to simplify the modlist creation for Zomboid servers.

locate ...\Steam\steamapps\workshop\content\108600 for Steam, ...\ProjectZomboid\mods for DRM-free

insert both files in mods directory, and run both. 
Now, two new files have been created, named "extractedIds" and "extractedNames"

They contain all ids and mods-names in a single line format, seperatd by semicolons, ready to be inserted into the server config file.
