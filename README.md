# Example-Dynamic-SS13-Module

An example Dynamic SS13 Module used for end-to-end testing.

This module intentionally stays tiny. It proves that a tg-style downstream can:

- install a module as a Git submodule
- discover `*.module.toml`
- include module DM source during `dynamic-modules prepare`
- merge module config defaults with host overrides
- include module unit tests through the generated test manifest
- trace the module from `.dynamic_modules_build/index.json`

## Files

- `example-dynamic-module.module.toml`: module manifest
- `code/example_dynamic_module.dm`: normal module source
- `tests/example_dynamic_module_unit.dm`: example unit test
- `config/default.toml`: module config defaults
- `config/config.schema.json`: config schema used by the prepare step

## Local validation

From a host repo that has Dynamic SS13 Modules configured:

```bash
git submodule add https://github.com/CatoChristopherMrow/Example-Dynamic-SS13-Module.git dynamic_modules/installed/example-dynamic-module
python3 tools/dynamic_modules/prepare.py
```

The module targets Dynamic SS13 Modules 1.0 and is intentionally kept boring:
normal DM source, config defaults, and one unit test.
