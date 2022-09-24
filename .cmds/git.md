
### **Tags** 

- Pushing Tags  
`git push origin --tags`

- Signing Tags  
`git tag -s <Tag_Name>`

- Signing Existing Tags  
`git for-each-ref refs/tags | awk '{print $3}' | cut -c11- | xargs -I % sh -c 'git tag % % -f -s'`

### **Trace**

- Tracing logs for error in git commands ex -> CMD is the git cmd.  
`GIT_TRACE=1 ${CMD}`

### **GPG key Setup**

For Mac users, the [**GPG Suite** ](https://gpgtools.org/) allows you to store your GPG key passphrase in the Mac OS Keychain.

My Key already exist incase of creating new key check [**Generating a new GPG key**](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
- Check for the existing key    
`gpg --list-secret-keys --keyid-format=long`
- Config your Key </br>
- `git config --global user.signingkey <your_key>`


- Incase of error with Signing commits ex { <span style ="color:red">*error: gpg failed to sign the datafatal: failed to write commit object*</span> }  
`gpgconf --kill gpg-agent`

### **GITHUB SSH Setup**
- [**Using SSH KeyGen**](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  </br> 
`ssh-keygen -t ed25519 -C "your_email@example.com"` </br>
Add the Key </br>
`$ eval "$(ssh-agent -s)"`</br>
`> Agent pid 59566`

- [**Using Github CLI**](https://dev.to/bdougieyo/setup-ssh-to-with-one-command-5cp2) (*Recommended *)</br>
    `gh auth login`</br>
    `gh auth login --git-protocol ssh`
    
### GITIGNORE

Ever wondered why .DS_Store keeps getting added to your git repo?

Navigating to a folder using the "Finder" on Mac generates a .DS_Store file holding metadata about the folder (e.g. thumbnails etc.). These files can pollute your git commits and are annoying.

Luckily, you can add files of this kind to their global gitignore file to never commit these to their git projects:
On terminal execute:

```
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```





If .DS_Store was never added to your git repository, simply add it to your .gitignore file.

#### If you don't have one, create a file called
```
.gitignore
```

In your the root directory of your app and simply write
```
**/.DS_Store
```

In it. This will never allow the .DS_Store file to sneak in your git.


#### if it's already there, write in your terminal:
```
find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch
```
then commit and push the changes to remove the .DS_Store from your remote repo:
```
git commit -m "Remove .DS_Store from everywhere"

git push origin master
```
And now add .DS_Store to your .gitignore file, and then again commit and push with the 2 last pieces of code (git commit..., git push...)


#### Other Solution



If .DS_Store already committed:
```
find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch
```

To ignore them in all repository: (sometimes it named ._.DS_Store)

```
echo ".DS_Store" >> ~/.gitignore_global
echo "._.DS_Store" >> ~/.gitignore_global
echo "**/.DS_Store" >> ~/.gitignore_global
echo "**/._.DS_Store" >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
