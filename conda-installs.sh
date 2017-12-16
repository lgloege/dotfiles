#!/bin/bash
# ===============================================================
# Install python packages that do not come with anaconda
#
# L. Gloege October 2017
# ===============================================================

# Installs Ananconda 3.6
# Anaconda site : https://www.anaconda.com/download/#macos
# wget 'https://repo.continuum.io/archive/Anaconda3-5.0.1-MacOSX-x86_64.pkg'

# xarray for netcdf support
conda install -c conda-forge xarray

# basemap to create maps
conda install -c conda-forge basemap

# cmocean for nice colormaps
conda install -c conda-forge cmocean

# nice for georeferenced data, works with pandas dataframes
# if use with basemap, make sure basemap is loaded first
pip install geopandas

# uninstall jedi : prevents geopandas from hanging during tab compplete
if python -c "import geopandas" &> /dev/null; then
    pip uninstall jedi
fi
