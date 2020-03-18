# ansible

[Ansible](https://www.ansible.com/) `docker` image build.

## Build

Images are tagged using the version of `ansible` packaged in the image.

The `ansible` package version is also set in the containers `ANSIBLE_VERSION` environment variable.

## Usage

Ansible documentation is available [online](https://docs.ansible.com/ansible/latest/index.html).

Example: `docker run --rm docker.pkg.github.com/lazybit-ch/ansible/ansible:v2.9.6 --version`
