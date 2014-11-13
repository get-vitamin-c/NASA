# Name of the role should match the name of the file
name "canaveral"

run_list(
  "recipe[rvm::system]",
  "recipe[rvm::vagrant]",
  "recipe[git]",
  "recipe[mongodb::default]",
  "recipe[redisio]",
  "recipe[redisio::enable]",
  "recipe[sidekiq]"
)