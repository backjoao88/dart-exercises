# Dart
This repository contains a few exercises made in the Dart Programming Language.

# Install Dart on Linux


### Adding Dart Stable Apt Repository

```
sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
```

### Installing Dart SDK

```
sudo apt-get update
sudo apt-get install dart
```

### Modify the Path (zsh)

```
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.zshenv
source ~/.zshenv
```

### Compiling files

This will generate a .exe file

```
dart compile exe [file].dart
```


## List 01
###### 1 - Read a number from keyboard and show his predecessor.
###### 2 - Read the number of electors of a city, the number of valid votes, white votes and protest votes. Show the percentual of each.
###### 3 - Read the salary of a employee and show it readjusted.
###### 4 - Read three marks of a student and show the average with given weights.
###### 5 - Read three marks and three weights of a student and show the average
###### 6 - Convert Fareinheit degree to Celsius.
###### 7 - Read three numbers (two integers and one double), show the double product of the first with the second, and the triple sum of the first with the third.
###### 8 - 
###### 9 - 
