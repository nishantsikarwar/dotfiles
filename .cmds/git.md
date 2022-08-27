
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
- Config your Key
`git config --global user.signingkey <your_key>`


- Incase of error with Signing commits ex {
    <span style ="color:red">*error: gpg failed to sign the datafatal: failed to write commit object*</span>
    }
    `gpgconf --kill gpg-agent`



