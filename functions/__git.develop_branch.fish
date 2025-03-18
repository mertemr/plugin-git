function __git.develop_branch --description "Checkout to dev branch, or develop if dev doesn't exist"
  if git rev-parse --verify dev >/dev/null 2>&1
    echo dev
  else if git rev-parse --verify develop >/dev/null 2>&1
    echo develop
  else
    echo "Neither 'dev' nor 'develop' branches exist."
    return 1
  end
end