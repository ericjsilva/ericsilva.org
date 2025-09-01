[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
# ericsilva.org

My personal website built with Hugo.

## Local Development

```shell
brew install docker
brew install colima
colima start
docker run -v $(pwd):/src -p 1313:1313 peaceiris/hugo:latest server --buildDrafts --buildFuture --bind 0.0.0.0
```
