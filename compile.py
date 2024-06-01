#!/usr/bin/env python3

import os
import itertools
import re

# Assign directories
directory = "src/base46/lua/base46/themes"
custom = "src/themes"

highlights = ""

# Read the template.toml file and store lines after the 7th line
with open("template.toml", "r") as text_file:
    for line in itertools.islice(text_file, 7, None):
        highlights += line

# Create directories if they don't exist
if not os.path.exists("templates"):
    os.mkdir("templates")

if not os.path.exists("colors"):
    os.mkdir("colors")


def extract_base_30(lines):
    base_30 = {}
    start = False
    for line in lines:
        if line.startswith("M.base_30 = {"):
            start = True
            continue
        if start:
            if "}" in line:
                break
            key_value = line.split("=")
            if len(key_value) == 2:
                key = key_value[0].strip()
                value = key_value[1].strip().replace(",", "").replace('"', '')
                value = re.sub(r"--.*$", "", value).strip()  # Remove comments
                base_30[key] = value
    return base_30


def clean_line(line):
    # Strip extra characters and ensure proper formatting
    line = re.sub(r"--.*$", "", line).strip()  # Remove comments
    line = line.replace(",", "")
    line = line.replace("{", "")
    line = line.replace("}", "")
    line = line.replace("M.base_16 =", "")
    line = line.strip()
    return line


def process_files_in_directory(directory):
    for filename in os.listdir(directory):
        f = os.path.join(directory, filename)
        # Check if it is a file
        if os.path.isfile(f):
            themename = filename.split(".")[0].replace("-", "_")
            palette = ""
            bg = "dark"
            with open(f, "r") as text_file:
                lines = text_file.readlines()
                base_30 = extract_base_30(lines)
                started = False
                brackets = 0
                for line in lines:
                    if started:
                        if "}" in line:
                            brackets += 1
                        if "M.base_30" in line:
                            for key in base_30:
                                line = re.sub(rf"M\.base_30\.{key}\b", f'"{base_30[key]}"', line)
                        line = clean_line(line)
                        if "=" in line:
                            key, value = line.split("=")
                            key = key.strip()
                            value = value.strip()
                            if not value.startswith('"'):
                                value = f'"{value}"'
                            line = f"{key} = {value}"
                        if len(line) > 0:
                            palette += line + "\n"
                        if brackets >= 2:
                            started = False
                    if line.startswith("M.base_30 = {"):
                        started = True
                    if line.startswith("vim.opt.bg") and "light" in line:
                        bg = "light"
            template_path = "templates/" + themename + ".toml"
            with open(template_path, "w") as toml:
                toml.write("[information]\n")
                toml.write(f'name="{themename}"\n')
                toml.write('author="Name <email@domain.com>"\n')
                toml.write(f'background="{bg}"\n')
                toml.write("\n")
                toml.write("[palette]\n")
                toml.write(palette)
                toml.write("\n")
                toml.write(highlights)
            print(f"Compiling {template_path}")
            os.system(f"cd colors && colorgen-nvim -s ../{template_path}")


# Process files in both directories
process_files_in_directory(directory)
process_files_in_directory(custom)

