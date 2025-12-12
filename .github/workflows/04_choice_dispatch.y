name: Choice Dispatch
run-name: Runniing - ${{ github.event_name}}
on:
    workflow_dispatch:
        inputs:
            tags:
                description: Selecione a tag
                type: choice
                options:
                    - tag1
                    - tag2
                    - tag3
                default: tag1
                required: true

jobs:
    on-workflow-dispatch:
        runs-on: ubuntu-latest
        steps:
            - name: comment
              run: |
                echo "comentário dispatch choice"
                echo "selecionou - $ {{ input.tags }}"
