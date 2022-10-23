from git import Repo

repo = Repo('.')
branch = repo.active_branch
print(branch.name)