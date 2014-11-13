# Name of the role should match the name of the file
name "houston"

# Run list function we mentioned earlier
run_list(
  "recipe[chef_gem]",
  "recipe[rvm]"
)