# GitHub Action to Upload Assets to Azure Blob Storage

This action is designed to use the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) to download a file of your choice from Azure Blob Storage account.
This action is based on: https://github.com/bacongobbler/azure-blob-storage-upload

## Usage

### Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```yaml
name: Download To Azure Blob Storage
on:
  push:
    branches:
      - main
jobs:
  download:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: ymoona/azure-blob-storage-download@main
        with:
          source_dir: ./
          container_name: documentation
          connection_string: ${{ secrets.ConnectionString }}
          file: readme.md
```


### Required Variables

| Key                 | Value                                                                           |
|---------------------|---------------------------------------------------------------------------------|
| `connection_string` | The connection string for the storage account.                                  |
| `container_name`    | The name of the storage account container these assets will be downloaded from. |
| `file`              | The name of the file to download.                                               |
| `source_dir`        | The name of the directory you where you want to the file to.                    |

## License

This project is distributed under the [Apache 2 license](LICENSE).

