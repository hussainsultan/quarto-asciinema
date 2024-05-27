# Quarto Asciinema Player Extension

## Overview

Spice up your Quarto docs with Asciinema recordings using a simple shortcode. Perfect for making your tutorials and demos pop!

## Installation

Add the extension to your Quarto project:

```sh
quarto add hussainsultan/quarto-asciinema
```
### Options

- `recPath`: Path to the recording.
- `cols`: Terminal width (default: 80).
- `rows`: Terminal height (default: 24).
- `autoPlay`: Start automatically (`true`/`false`).
- `speed`: Playback speed (default: 1).
- `theme`: Terminal color theme (`asciinema`, `tango`, `solarized-dark`, `dracula`).
- `poster`: Preview frame (`npt:1:23`).
- `fit`: Sizing (`width`, `height`, `both`, `none`).
- `controls`: Show controls (`true`, `false`, `auto`).

Refer to the [upstream docs](https://docs.asciinema.org/manual/player/options/) for the complete and up to date list of options.
### Example

```markdown
---
title: "Asciinema Example"
---

## Heading

{{< asciinema "./demo.cast" cols="80" rows="15" autoPlay="true" speed="4" theme="dracula" poster="npt:1:23" >}}

```

## License

MIT License. Hack away!
