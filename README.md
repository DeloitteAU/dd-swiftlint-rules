# Swiftlint custom rules
This repository contains the configuration file of Swiftlint that is based on Deloitte Digital's Swift Style Guide.

## Prerequisite
Install Swiftlint first by following the steps in [Swiftlint](https://github.com/realm/SwiftLint)

Recommend using Homebrew to install Swiftlint.

## How to use Swiftlint and configuration file in your project
1. Add this `.swiftlint.yml` file under your project root directory
2. Rename the project under `included:` in the `.swiftlint.yml` file.
3. Add "New Run Script Phase", following the instructions in [Swiftlint](https://github.com/realm/SwiftLint)
4. Build your project, then it will scan and detect the code that doesn't comply with Swift Guide rules, and show warning or error messages

## Development Workflow
1. Create a new your own branch from master branch
2. Add your custom rules or modification in `.swiftlint.yml` file
3. Write code test for your modification or updates
4. Commit and Push your changes
5. Create a Pull Request

## Documentation
You can find all you need about Swiftlint on this official Github page [Swiftlint](https://github.com/realm/SwiftLint), e.g How to define custom rules in Swiftlint, and how to use .swiftlint.yml configuration file
