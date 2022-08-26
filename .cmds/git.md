
### **Tags** 

- Pushing Tags  
`git push origin --tags`

- Signing Tags  
`git tag -s <Tag_Name>`

- Signing Existing Tags  
`git for-each-ref refs/tags | awk '{print $3}' | cut -c11- | xargs -I % sh -c 'git tag % % -f -s'`

