# Bash script to generate Dart class model file with constructor, toJson, and fromJson functions

## Overview

This bash script generates a Dart class model file with a constructor, `toJson`, and `fromJson` functions, given a list of attributes with types. It is a simple and fast way to generate class models in Dart.

## Usage

To use this script, follow these steps:

1. Open a terminal window and navigate to the directory where you want to create the Dart class model file.
2. Download the `generate_class_model.sh` script from this repository to your local machine.
3. Open the terminal window and run the following command, replacing `MyClass` with the name of your class and `name:String age:int is_active:bool` with the list of attributes and types for your class:
4 `./generate_class_model.sh MyClass name:String age:int is_active:bool`
5. The script will generate a Dart class model file called `MyClass.dart` in the current directory.

You can customize the class name and list of attributes to suit your needs. The script is flexible and allows you to specify the class name and attributes as command-line arguments.

## Contributing

If you find any bugs or issues with this script, please feel free to open an issue or pull request in this repository. We welcome your feedback and contributions to make this script more useful and flexible.

## License

This script is released under the MIT License. Feel free to use it for any purpose, commercial or non-commercial.




