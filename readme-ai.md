<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
</p>
<p align="center">
    <h1 align="center">TERRAFORMTECH</h1>
</p>
<p align="center">
    <em><code>► INSERT-TEXT-HERE</code></em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/Raihan11x/TerraformTech?style=flat&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/Raihan11x/TerraformTech?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/Raihan11x/TerraformTech?style=flat&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/Raihan11x/TerraformTech?style=flat&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/badge/Terraform-7B42BC.svg?style=flat&logo=Terraform&logoColor=white" alt="Terraform">
</p>
<hr>

##  Quick Links

> - [ Overview](#-overview)
> - [ Features](#-features)
> - [ Repository Structure](#-repository-structure)
> - [ Modules](#-modules)
> - [ Getting Started](#-getting-started)
>   - [ Installation](#-installation)
>   - [Running TerraformTech](#-running-TerraformTech)
>   - [ Tests](#-tests)
> - [ Project Roadmap](#-project-roadmap)
> - [ Contributing](#-contributing)
> - [ License](#-license)
> - [ Acknowledgments](#-acknowledgments)

---

##  Overview

<code>► INSERT-TEXT-HERE</code>

---

##  Features

<code>► INSERT-TEXT-HERE</code>

---

##  Repository Structure

```sh
└── TerraformTech/
    └── murrad-solirius
        └── infra
            ├── Dev
            │   └── dev.tfvars
            ├── Prod
            │   └── prod.tfvars
            ├── Staging
            │   └── staging.tfvars
            ├── config.tf
            ├── main.tf
            ├── modules
            │   ├── ecs
            │   │   ├── app-lb.tf
            │   │   ├── dns.tf
            │   │   ├── main.tf
            │   │   └── vars.tf
            │   ├── rds
            │   │   ├── main.tf
            │   │   ├── outputs.tf
            │   │   └── variables.tf
            │   └── vpc
            │       ├── main.tf
            │       ├── outputs.tf
            │       ├── scp.tf
            │       └── variables.tf
            └── vars.tf
```

---

##  Modules

<details closed><summary>murrad-solirius.infra</summary>

| File                                                                                                | Summary                         |
| ---                                                                                                 | ---                             |
| [main.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/main.tf)     | <code>► INSERT-TEXT-HERE</code> |
| [config.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/config.tf) | <code>► INSERT-TEXT-HERE</code> |
| [vars.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/vars.tf)     | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>murrad-solirius.infra.Prod</summary>

| File                                                                                                         | Summary                         |
| ---                                                                                                          | ---                             |
| [prod.tfvars](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/Prod/prod.tfvars) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>murrad-solirius.infra.Staging</summary>

| File                                                                                                                  | Summary                         |
| ---                                                                                                                   | ---                             |
| [staging.tfvars](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/Staging/staging.tfvars) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>murrad-solirius.infra.Dev</summary>

| File                                                                                                      | Summary                         |
| ---                                                                                                       | ---                             |
| [dev.tfvars](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/Dev/dev.tfvars) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>murrad-solirius.infra.modules.ecs</summary>

| File                                                                                                            | Summary                         |
| ---                                                                                                             | ---                             |
| [main.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/ecs/main.tf)     | <code>► INSERT-TEXT-HERE</code> |
| [app-lb.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/ecs/app-lb.tf) | <code>► INSERT-TEXT-HERE</code> |
| [dns.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/ecs/dns.tf)       | <code>► INSERT-TEXT-HERE</code> |
| [vars.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/ecs/vars.tf)     | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>murrad-solirius.infra.modules.vpc</summary>

| File                                                                                                                  | Summary                         |
| ---                                                                                                                   | ---                             |
| [outputs.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/vpc/outputs.tf)     | <code>► INSERT-TEXT-HERE</code> |
| [scp.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/vpc/scp.tf)             | <code>► INSERT-TEXT-HERE</code> |
| [main.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/vpc/main.tf)           | <code>► INSERT-TEXT-HERE</code> |
| [variables.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/vpc/variables.tf) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>murrad-solirius.infra.modules.rds</summary>

| File                                                                                                                  | Summary                         |
| ---                                                                                                                   | ---                             |
| [outputs.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/rds/outputs.tf)     | <code>► INSERT-TEXT-HERE</code> |
| [main.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/rds/main.tf)           | <code>► INSERT-TEXT-HERE</code> |
| [variables.tf](https://github.com/Raihan11x/TerraformTech/blob/master/murrad-solirius/infra/modules/rds/variables.tf) | <code>► INSERT-TEXT-HERE</code> |

</details>

---

##  Getting Started

***Requirements***

Ensure you have the following dependencies installed on your system:

* **Terraform**: `version x.y.z`

###  Installation

1. Clone the TerraformTech repository:

```sh
git clone https://github.com/Raihan11x/TerraformTech
```

2. Change to the project directory:

```sh
cd TerraformTech
```

3. Install the dependencies:

```sh
terraform init
```

###  Running `TerraformTech`

Use the following command to run TerraformTech:

```sh
terraform apply
```

###  Tests

Use the following command to run tests:

```sh
Insert test command.
```

---

##  Project Roadmap

- [X] `► INSERT-TASK-1`
- [ ] `► INSERT-TASK-2`
- [ ] `► ...`

---

##  Contributing

Contributions are welcome! Here are several ways you can contribute:

- **[Submit Pull Requests](https://github.com/Raihan11x/TerraformTech/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.
- **[Join the Discussions](https://github.com/Raihan11x/TerraformTech/discussions)**: Share your insights, provide feedback, or ask questions.
- **[Report Issues](https://github.com/Raihan11x/TerraformTech/issues)**: Submit bugs found or log feature requests for the `TerraformTech` project.

<details closed>
    <summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/Raihan11x/TerraformTech
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to GitHub**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.

Once your PR is reviewed and approved, it will be merged into the main branch.

</details>

---

##  License

This project is protected under the [SELECT-A-LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

##  Acknowledgments

- List any resources, contributors, inspiration, etc. here.

[**Return**](#-quick-links)

---
