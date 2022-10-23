from git import Repo

repo = Repo('.')
branch = repo.active_branch
active_branch_name= branch.name
x =repo.commit(active_branch_name)
print(x)