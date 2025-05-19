#!/usr/bin/env -S uv run --script

# based on Jon's clutterbase installer
import os
import platform
from pathlib import Path

MODULE_NAME = "UsdPublisherPlugin"
VERSION = "1.0.0"

def generate_mod(os_name):
  
    # set maya location based on the os
    if os_name == "Windows":
        maya_loc = Path.home() / "Documents" / "maya"

    elif os_name == "Linux":
        maya_loc =  Path.home() / "maya"

    elif os_name == "Darwin":
        maya_loc = Path.home() / "Library" / "Preferences" / "Autodesk" / "maya"

    # get plugin dir and mod file path
    user_dir = Path.cwd()
    print(f"user dir = {user_dir}")
    print(f"maya location = {maya_loc}")
 
    modules_dir = Path(maya_loc / "modules")
    mod_path = Path(maya_loc / "modules" / f"{MODULE_NAME}.mod")
    # check if the dir exists
    print(f"modules directory = {modules_dir}")
    modules_dir.mkdir(exist_ok=True)

    plugin_dir = Path(f"{user_dir}/usd_publisher_plugin")
    # if mod isn't founds as file - write it
    if not mod_path.is_file():
        print("Generating .mod for UsdPublisherPlugin")
        with open(mod_path, "w") as file:
            file.write(f"+ {MODULE_NAME} {VERSION} {user_dir}\n") # first like with name and location
            file.write(f"MAYA_PLUG_IN_PATH += {plugin_dir}\n") # add each plugin module by line
            file.write(f"PYTHONPATH += {plugin_dir}\n")
            file.write(f"PYTHONPATH += {plugin_dir / 'source'}\n")
            file.write(f"PYTHONPATH += {plugin_dir / 'ui'}\n")
        print(f"mod file created at {mod_path}")
    else:
        print(f"mod file already exists at {mod_path}")

if __name__ == "__main__":
    os_name = platform.system()
    generate_mod(os_name)