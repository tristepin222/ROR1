# ROR1

## Description

This project is designed with ruby on rails.

## Getting Started

### Prerequisites

Clone the repository, and install [Ruby](https://www.ruby-lang.org/fr/downloads/), [SQlite3](https://www.sqlite.org/download.html), [ruby on rails](https://guides.rubyonrails.org/getting_started.html).

#### installation on windows

Download ruby from the [ruby installer](https://rubyinstaller.org/).

Download the tools [SQlite3](https://www.sqlite.org/2024/sqlite-tools-win-x64-3450000.zip), Add the folder to windows system variables, under PATH.

Verify the sqlite CLI installation with `sqlite3 --version`, if it returns you a number starting by "3.45.0", then you have sucessfully installed sqlite, if not, be sure your PATH variable is correct.


and start by doing an installation of every gems by doing.

`bundle install` then you can add the DB, tables, etc... With.

`rails db:migrate`

and then you can start the server.

`ruby bin/rails server` or `rails server`.

#### building tailwind

You need to build tailwind at least one time to have change registered in CSS.

Use `rails tailwindcss:build` to build tailwindcss.

Each time you make a change in the css, you'll have to build it again, if you don't want to rerun the same command each time you change something, you can run `rails tailwindcss:watch`, it will automatically build on change.

#### Environment

- ruby (3.2.2)
- Visual studio code with Ruby LSP extension installed
- ruby on rails (7.1.3)
- SQLite3 (3.45.0)
- OS (windows 10, not tested under other OS)

#### Libraries

- Tailwindcss 3.4.1

## Deployment

### Dev environment

With visual studio Code, you only need to run the commands `ruby bin/rails server` or `rails server`., to get the server running.

## Directory tree
    ROR1

## Collaborate

If you wish to collaborate, simply clone the repo, create a branch with the feature you want to fix, or add.

When you're finish with it, create a pull request, we will review your code, comment it, and it will be merged once it passes our requirements.

For more info please check the wiki.

## License

Unlicensed, Available at project root.

## Contact

If you have any problems, please reach us on github issues.