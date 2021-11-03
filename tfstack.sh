#!/usr/bin/env bash

mkdir $1
cd $1

set -e
files=(
    "_backend.tf"
    "_providers.tf"
    "_versions.tf"
    "main.tf"
    "data.tf"
    "variables.tf"
    "outputs.tf"
)
for file in "${files[@]}"; do touch $file; done

# cat << EOF >> .tflint.hcl
# # /.tflint.hcl
# <--- TFLINTCONFIG --->
# EOF

echo "Terraform scaffold created for project: $1
