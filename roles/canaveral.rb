# Name of the role should match the name of the file
name "canaveral"

run_list(
  "recipe[rvm::system]"
)