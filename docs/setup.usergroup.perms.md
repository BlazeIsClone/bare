# Add user to www-data group to grant apache and user with read/write permissions


### Add your user to www-data group:
You want to call usermod on your user. So that would be:

```bash
sudo usermod -aG www-data yourUserName
```

Assuming www-data group exists
### Check your user is in www-data group:

```bash
groups yourUserName
```

You should get something like:

```bash
yourUserName : yourUserGroupName www-data
```

yourUserGroupName is usually similar to you user name
### Recursively change group ownership of the folder keeping your user ownership

```bash
chown yourUserName:www-data -R yourWebSiteFolder/*
```

### Recursively change group premissions to enable write permissions:

```bash
chmod -R ug+rw foldername
```
