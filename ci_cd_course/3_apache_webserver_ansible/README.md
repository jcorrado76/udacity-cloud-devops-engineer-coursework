In this exercise, we are taking the [hello world tutorial](https://www.howtoforge.com/tutorial/nodejs-ubuntu-getting-started/) 
and trying to automate it using Ansible. 

The usage here is, as usual:
```bash
make initializeInventory
make generateInventory
make webServer
```

After waiting for the Ansible commands to finish, you should be able to navigate to
`[PublicIPv4]:3000` in your browser, and see the hello world output.