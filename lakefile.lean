import Lake
open Lake DSL

package "LeanTeX_Mathlib" where
  version := v!"0.1.0"
  keywords := #["math"]
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`autoImplicit, false⟩
  ]

require "leanprover-community" / "mathlib" @ git "v4.19.0"
require "ldct" / "LeanTeX"
  from git "https://github.com/ldct/LeanTeX"@"main"
require "leanprover-community" / "batteries" @ git "v4.19.0"
require "leanprover-community" / "importGraph" @ git "v4.19.0"

@[default_target]
lean_lib «LeanTeXMathlib» where
  -- add any library configuration options here
