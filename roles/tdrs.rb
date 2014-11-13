# Name of the role should match the name of the file
name "tdrs"

run_list(
  "recipe[rvm::system]",
  "recipe[git]",
  "recipe[mongodb::default]"
)