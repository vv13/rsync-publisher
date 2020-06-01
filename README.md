# async-publisher

use async to upload files.

## ENVS

### SECRETS
- `DEPLOY_KEY`, private ssh key.
- `SERVER_DEST`, remote origin dest.

### OTHERS
- `FOLDER`, prepare to upload directory.
- `OPTION`, rsync command options.

## Example
```
- name: rsync to server
  uses: vv13/rsync-publisher@v1
  env:
    DEPLOY_KEY: ${{ secrets.DEPLOY_KEY }}
    SERVER_DEST: ${{ secrets.SERVER_DEST }}
    FOLDER: "build/"
    OPTION: "-avzr --delete"
```
