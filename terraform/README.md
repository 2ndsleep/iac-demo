# Terraform

This contains Terraform modules and configurations.

## Folder Organization

Each of the following folders will contain subfolders that each contain an module or configuration.

- **azure_ad**: Terraform configurations that configure Azure AD
- **azure**: Terraform configurations that configure Azure resources
- **modules**: Custom Terraform modules

## Documentation

Use [terraform-docs](https://github.com/terraform-docs/terraform-docs) to create README files rather than writing README files directly.

### Authoring Documentation

Most content will be automatically generating by terraform-docs, so you only need to supply additional information that isn't obvious from the automatically generated content. Add your custom markdown content at the top of the `main.tf` file within comments, such as the following example.

``` terraform
/*
  * # Example Configuration Name
  * 
  * Here's where you describe things that will help the engineer.
  * 
  * ## Usage
  * 
  * Like for instance, you'd help explain that `variable1` which is an object needs * to be specified as so:
  *
  * ```
  * {
  *   "item1": "value1",
  *   "item2": "value2" 
  * }
  * ```
*/
```

### Generating README

For now, run the following command to create the README file for each Terraform configuration or module. Later, this will be incorporated into a GitHub Action pipeline.

```
terraform-docs markdown table --output-file README.md --output-mode inject /path/to/module
```