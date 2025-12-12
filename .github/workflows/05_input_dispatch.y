name: Workflow Input Dispatch
run-name: Running - $ {{ github.event_name}}

on:
    workflow_dispatch:
        inputs:
            serie:
                description: Digite sua serie favorita
                type: string
jobs:
    on-workflow-dispatch:
        runs-on: ubuntu-latest
        steps:
            - name: comment
              run: |
                echo "Workflow foi disparado com input"
                echo "Sua série favorita é - ${{ github.event.inputs.serie }}"