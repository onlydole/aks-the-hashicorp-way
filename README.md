# Vault on AKS

> Deploying Vault on Azure Kubernetes Service using Terraform

## Table of Contents

- [Vault on AKS](#vault-on-aks)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Additional Reading](#additional-reading)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

To use the code in this repository, you will need the following applications:

- [HashiCorp Terraform](https://www.terraform.io/downloads.html) `0.14.6` (or later)
- Azure CLI [az](https://docs.microsoft.com/en-us/cli/azure/) `2.0.0` (or later)

## Author Information

This repository is maintained by [Taylor Dolezal](https://github.com/onlydole)

## Additional Reading

### Terraform

- Creating Terraform resources: [learn.hashicorp.com/tutorials/terraform/azure-dependency](https://learn.hashicorp.com/tutorials/terraform/azure-dependency?in=terraform/azure-get-started)
- Terraform Remote State: [learn.hashicorp.com/tutorials/terraform/azure-remote](https://learn.hashicorp.com/tutorials/terraform/azure-remote?in=terraform/azure-get-started)
- Provisioning AKS Clusters: [learn.hashicorp.com/tutorials/terraform/aks](https://learn.hashicorp.com/tutorials/terraform/aks?in=terraform/kubernetes)
- Managing Kubernetes resources: [learn.hashicorp.com/tutorials/terraform/kubernetes-provider](https://learn.hashicorp.com/tutorials/terraform/kubernetes-provider?in=terraform/kubernetes)

### Consul

- Introduction to Consul [learn.hashicorp.com/tutorials/consul/deployment-overview](https://learn.hashicorp.com/tutorials/consul/deployment-overview?in=consul/production-deploy)
- Consul on Kubernetes: [learn.hashicorp.com/collections/consul/gs-consul-service-mesh](https://learn.hashicorp.com/collections/consul/gs-consul-service-mesh)

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
