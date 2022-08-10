To set up a new RSpec project:

# This assumes you have Ruby & RVM installed. If you don't, visit:
# https://rvm.io/ to install RVM.

# First, create a directory for your project
; mkdir your-project-directory
; cd your-project-directory

# Then, we're going to get you the latest Ruby
; rvm get stable
; rvm use ruby --latest --install --default

# Next, install bundler, which manages dependencies like RSpec
; gem install bundler

# Create a bundler project
; bundle init

# And add RSpec to your dependencies
; bundle add rspec

# Generate an RSpec template
; rspec --init

# Create a folder for your implementation code
; mkdir lib

# And create a repository for your changes
; git init .
; git add .
; git commit -m "Project setup"

# Then go and create a repository on github.com
# On the next screen after you have created the repository,
# follow the "Push an existing repository from the command line" section
# To push your project to your github repository
# It will look something like this...
; git remote add origin YOUR_REMOTE_ADDRESS
; git branch -M main
; git push -u origin main