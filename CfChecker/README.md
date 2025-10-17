# CF-CHECKER EDITO Tutorial

This notebooks allows running [cfchecks](https://github.com/cedadev/cf-checker) from an input yaml.

It can either:
- download the data from Marine Data Store using copernicusmarine toolbox
- use files that are already present in a `data/` directory (unless specified differently)

Then `cfchecks` is applied on each file and returning a report `output.txt` (unless specified differently)