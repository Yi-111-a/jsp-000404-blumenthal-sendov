import Lake
open Lake DSL

package jsp404

require mathlib from git "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0"

@[default_target]
lean_lib JSP404 where
  globs := #[.andSubmodules `JSP404]
