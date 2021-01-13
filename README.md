# 🚀 Rust Cross Release

A simple project template for a fully automated cross-platform & cross-architecture CD structure

[![License](https://img.shields.io/badge/-MIT-f56565.svg?longCache=true&style=for-the-badge)](https://github.com/nurodev/rust-cross-release/blob/main/LICENSE)
[![Version](https://img.shields.io/github/v/release/nurodev/rust-cross-release?label=%20&style=for-the-badge)](https://github.com/NuroDev/rust-cross-release/releases)
[![Build](https://img.shields.io/github/workflow/status/nurodev/rust-cross-release/Build?label=%20&logo=github&logoColor=white&style=for-the-badge)](https://github.com/NuroDev/rust-cross-release/actions?query=workflow%3Abuild) 

## 🦄 Usage

Simply click the button below to get started:

[![Use this template](https://img.shields.io/badge/use%20this%20template-brightgreen.svg?longCache=true&style=for-the-badge)](https://github.com/nurodev/rust-cross-release/generate)

Once the template has been used and the repository has been generated, there is two steps required to complete the setup.
In order to use the release workflow function, you need to create mutliple repository secrets. Below will be listed all of the required secrets and how to go about adding them:
 - `GCR_TOKEN`: [docs.github.com](https://docs.github.com/en/free-pro-team@latest/actions/reference/encrypted-secrets)
 - `DOCKER_USERNAME`: Your Docker Hub Username
 - `DOCKER_TOKEN`: [Docker Hub Access Token](https://www.docker.com/blog/docker-github-actions/)
