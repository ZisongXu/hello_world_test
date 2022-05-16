#!/bin/bash
sudo singularity shell \
    --writable \
    --home=home:$HOME \
    ubuntu16_04_kinetic_container
