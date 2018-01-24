# Basic Tools
## Direnv
```
brew install direnv
echo "eval \"$(direnv hook bash)\"" > ~/.bash_profile
source ~/.bash_profile
cd some/working/directory/
vim .envrc
direnv allow .
```

# Ruby
## Bundler stuff
Create new gem ```bundle gem my-gem-name```

Vendor gems ```bundle config path vendor/bundle```
  * You need in .envrc
    ```
    export PATH=vendor/bundle/bin:$PATH
    export GEM_PATH=vendor/bundle:$GEM_PATH
    ```

Set ruby version ```rbenv local <version-number>```

# Scala
## SBT
```
brew install sbt
```
Sublime ENSIME
  * http://ensime.github.io/editors/sublime/installation/
Setting scalaVersion in global.sbt will lead to a bad time

# Chromebook
## Misc
use ```prefs.js``` gist so Solarized vim theme plays nice with SecureShell
