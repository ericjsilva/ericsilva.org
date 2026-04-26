[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

# ericsilva.org

My personal website built with Hugo.

## Local Development

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Colima](https://github.com/abiosoft/colima)
- [Just](https://github.com/casey/just)

### Commands

- Start local server: `just server`
- Convert images to WebP: `just convert-images <directory>`

For example:

```shell
just convert-images content/woodworking/printer-stand
```
