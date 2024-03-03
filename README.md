<br>

<div align="center">
    <img src="docs/public/full_logo.svg" width="600" />
</div>

Vide is a reactive Luau UI library inspired by [Solid](https://www.solidjs.com/).

- Fully Luau typecheckable
- Declarative and concise syntax.
- Reactively driven.

## Getting started

Read the
[crash course](https://centau.github.io/vide/tut/crash-course/1-introduction)
for a quick introduction to the library.

## Code sample

```lua
local create = vide.create
local source = vide.source

local function Counter()
    local count = source(0)

    return create "TextButton" {
        Text = function()
            return "count: " .. count()
        end,

        Activated = function()
            count(count() + 1)
        end
    }
end
```

## FFlags

Luau normally gives up halfway when trying to compute the types for this module, so make sure to add this to your FFlags so it doesn't do that.

```json
"luau-lsp.fflags.override": {
  "LuauTypeInferIterationLimit": "0",
  "LuauCheckRecursionLimit": "0",
  "LuauTypeInferRecursionLimit": "0",
  "LuauTarjanChildLimit": "0",
  "LuauTypeInferTypePackLoopLimit": "0",
  "LuauVisitRecursionLimit": "0",
  "LuauParseDeclareClassIndexer": "true",
  "LuauLoopControlFlowAnalysis": "true"
}
```
