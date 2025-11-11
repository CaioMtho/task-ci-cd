name: Pipeline de CI

on:
    push:
        branches: [main]
    pull_request:
        branches: [main]
    
jobs:
    build:
        runs-on: ubuntu-latest

        steps:
            - name: checkout
              uses: actions/checkout@v3

            - name: setup do node
              uses: actions/setup-node@v3
              with:
                node-version: '20'
            - name: dependências
              run: npm install
            - name: testes
              run: npm test
