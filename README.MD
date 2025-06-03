## Setup

1. Define what providers to use
2. Download their binaries
   ```sh
   # If Terraform
   terraform init
   # If OpenTofu
   tofu init
   ```

## Tooling

- IaC: Pick on or the other, used for writing IaC modules
  - [Terraform]()
  - [OpenTofu]()

## Cloud Providers

#Ignore Provider binary in the gitignore
main.tf
.terraform

# ignore state files

# can contains sensitive information

<!--  *tfstate* -->

# Ignore variable files

# They likely contain sensitive information

<!-- *tfvars* -->
