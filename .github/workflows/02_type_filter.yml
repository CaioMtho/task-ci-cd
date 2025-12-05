name: Types
run-name: Running - ${{ github.event_name}}

on:
    pull_request:
        types:
            - opened
            - reopened
            - closed
        branches:
            - main
        paths:
            - '**.md'

jobs:
    on-push:
        runs-on: ubuntu-latest

        steps:
            - name: comment
              run: echo "A pull request foi criada ou reaberta ou fechada"
