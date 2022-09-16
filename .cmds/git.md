
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

