
# Back up Gitlab

## create project on Gitlab
on your own gitlab - URL <br>
login <br>
Projects - New Projects .... <br>
## Step2: Create Backup
COMPRESS_CMD="gzip -c --best" gitlab-backup create SKIP=db,uploads REPOSITORIES_SERVER_SIDE=true BACKUP=Git_bk

> > create Back up: cd /var/opt/gitlab/backups
> Git_bk_gitlab_backup.tar

## step 3: delete Project
on your own gitlab - URL <br>
To delete a project:<br>

On the left sidebar, at the top, select Search GitLab ({search}) to find your project.<br>
Select Settings > General.<br>
Expand Advanced.<br>
In the Delete this project section, select Delete project.<br>
On the confirmation dialog, enter the project name and select Yes, delete project.<br>

This action deletes the project and all associated resources (such as issues and merge requests).<br>

## Step 4: Restore Back up

sudo gitlab-ctl stop unicorn <br>
sudo gitlab-ctl stop sidekiq <br>

sudo gitlab-ctl status <br>

sudo gitlab-rake gitlab:backup:restore BACKUP =….. <br>

sudo gitlab-ctl restart <br>

sudo gitlab-rake gitlab:check SANITIZE = true <br>