# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

from pathlib import Path
import sys

# Add the parent of the docs folder to sys.path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'usd-publisher-plugin'
copyright = '2025, Alesia Karchevskaia'
author = 'Alesia Karchevskaia'
release = '1.0.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [  'sphinx.ext.autodoc',
                'sphinx.ext.napoleon',  # if you're using Google or NumPy style docstrings
]

autodoc_mock_imports = ["maya", "maya.cmds", "maya.standalone", "maya.OpenMayaUI",
                        'pxr', 'pxr.Usd', 'pxr.Sdf', 'pxr.Tf', 'maya']

modindex_common_prefix = ['usd_publisher_plugin.']

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'alabaster'
html_static_path = ['_static']
