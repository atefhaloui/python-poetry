# python-poetry

## About

The repository provides Python Docker images with `poetry` preinstalled. My motivation for this was to cut the time spend in CI installing `poetry` with the `poetry-plugin-export` preinstalled as this is a requirement for the [Security Automations for AWS WAF solution](https://github.com/aws-solutions/aws-waf-security-automations).


[ghcr.io](https://ghcr.io/atefhaloui/python-poetry/)

## Supported tags

* [3.9](https://github.com/mathieu-lemay/python-poetry/blob/master/Dockerfile)
* [3.10](https://github.com/mathieu-lemay/python-poetry/blob/master/Dockerfile)
* [3.11](https://github.com/mathieu-lemay/python-poetry/blob/master/Dockerfile)
* [3.12](https://github.com/mathieu-lemay/python-poetry/blob/master/Dockerfile)
* [3.13, latest](https://github.com/mathieu-lemay/python-poetry/blob/master/Dockerfile)

## Unsupported versions
For python 2.7, 3.5 or 3.6, you can still use poetry 1.1.15 with the following tags:
`acidrain/python-poetry:{version}{,-slim,-alpine}-1.1.15`

For python 3.7, you can still use poetry 1.5.1 with the following tags:
`acidrain/python-poetry:3.7{,-slim,-alpine}-1.5.1`

For python 3.8, you can still use poetry 1.8.3 with the following tags:
`acidrain/python-poetry:{version}{,-slim,-alpine}-1.8.3`

## Thanks

Many thanks to
* [Mathieu Lemay](https://github.com/mathieu-lemay/python-poetry) from who I forked the project
* [Etienne Napoleone](https://github.com/etienne-napoleone) who originally created this repository and [Jon Atkinson](https://github.com/jonatkinson) who maintained it.
