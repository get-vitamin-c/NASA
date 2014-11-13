# Name of the role should match the name of the file
name "houston"

# Run list function we mentioned earlier
run_list(
  "recipe[rvm::system]",
  "recipe[rvm::vagrant]",
  "recipe[git]",
  "recipe[postgresql]",
  "recipe[postgresql::server]",
  "recipe[nodejs]"
)