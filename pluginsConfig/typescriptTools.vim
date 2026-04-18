lua << EOF
require("typescript-tools").setup({
  settings = {
    expose_as_code_action = "all",
    complete_function_calls = true,
    include_completions_with_insert_text = true,
  },
})
EOF
