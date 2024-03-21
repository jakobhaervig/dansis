# About this repository

This repo hosts the website of DANSIS live at [https://dansis.dk](https://dansis.dk). It's built around the [Jekyll framework](https://jekyllrb.com/) to be fast, responsive and flexible.

# Notes to self

## Install Jekyll and Ruby on Ubuntu

Install prerequisite:
```
sudo apt-get install ruby-full build-essential zlib1g-dev
```

Change default home for gems:
```
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Install Jekyll and bundler:
```
gem install jekyll bundler
```

Install git lfs support:
```
sudo apt install git-lfs
git lfs install
```

Serve website locally:
```
bundle exec jekyll serve
```