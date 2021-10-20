# aws/s3_static_website

Create an S3 bucket configured to host a public static website and a bucket policy.

See [Hosting a static website using Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)
for background.

## Example Usage

Create a static S3 bucket with default settings:
```terraform
module "appaloosa_web_bucket" {
  source = "github.com/simple-terraform-modules/aws/s3_static_website"
  name = "www.example.com"
}
```

## Required Parameters

Name | Type   | Description
-----|--------|------------
`name` | `string` | The name of the bucket. For the intended use case, the name should match the domain exactly.


## Optional Parameters

Name                    | Type          | Default        | Description
------------------------|---------------|----------------|--------------
`tags`                  | `map(string)` | `{}`           | Tags to apply to the bucket
`index_document`        | `string`      | `"index.html"` | The default document to load
`error_document`        | `string`      | `"error.html"` | The document to load for 4xx errors
`force_destroy`         | `bool`        | `false`        | Allows to delete a non-empty bucket on `terraform destroy`


## Outputs

Name     | Type          | Description
---------|---------------|--------------
`arn`    | `map(string)` | The ARN of the bucket
`id`     | `string`      | The ID of the bucket
