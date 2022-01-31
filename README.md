[![Gitter](https://badges.gitter.im/aztfmod/community.svg)](https://gitter.im/aztfmod/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

# Cloud Adoption Framework landing zones for Terraform - Platform starter template

Microsoft [Cloud Adoption Framework for Azure](https://aka.ms/caf) provides you with guidance and best practices to adopt Azure.

A landing zone is a segment of a cloud environment, that has been preprovisioned through code, and is dedicated to the support of one or more workloads. Landing zones provide access to foundational tools and controls to establish a compliant place to innovate and build new workloads in the cloud, or to migrate existing workloads to the cloud. Landing zones use defined sets of cloud services and best practices to set you up for success.

## :rocket: Getting started

To get started with creating your environment, you can fork this repository on your Git environment (inside your personal or organization GitHub, inside an Azure DevOps project or any other Version Control System that your company uses.)

We recommend you refer to the CAF Terraform landing zones documentation availble at [GitHub Pages](https://aka.ms/caf/terraform).

## :space_invader: Platform starter template

The purpose of this repository is to provide you with a starting point when composing your Cloud Adoption Framework for Azure landing zones for platform on Terraform. It provides with sample files, folder structure and advices on how to get started creating and Infrastructure as Code and DevOps environment.

In CAF landing zones for Terraform, our approach is to separate the logic repository and the configuration repositories (for platform and application landing zones).

* **Platform configuration repositories**: this template is an example of configuration repository for CAF landing zones platforms, containing definition of the configuration for your different core environment (often managed by centralized operations).

* **Application configuration repositories**: [another starter](https://github.com/Azure/caf-terraform-landingzones-starter) with examples of application configurations files for CAF landing zones.

* **Logic repository**: the Azure CAF landing [zone repository](https://github.com/azure/caf-terraform-landingzones)

This approach allows you to easily:

* check-in your configuration in your specific Git repository.
* resync the code with the public codebase for updates.
* customize the code if needed and contribute back to the community.



## Related repositories

Landing zones for Terraform are composed of multiple open-source components and projects:

| Repo                                                                                              | Description                                                |
|---------------------------------------------------------------------------------------------------|------------------------------------------------------------|
| [caf-terraform-landingzones](https://github.com/azure/caf-terraform-landingzones) | landing zones repo with sample and core documentations     |
| [rover](https://github.com/aztfmod/rover)                                                         | devops toolset for operating landing zones                 |
| [azure_caf_provider](https://github.com/aztfmod/terraform-provider-azurecaf)                      | custom provider for naming conventions                     |
| [module](https://registry.terraform.io/modules/aztfmod)                                          | CAF Terraform module |

## Community

Feel free to open an issue for feature or bug, or to submit a pull request.

In case you have any question, you can reach out to tf-landingzones at microsoft dot com.

You can also reach us on [Gitter](https://gitter.im/aztfmod/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
