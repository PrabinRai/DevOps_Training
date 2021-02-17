
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucketname #"s3-website-test.hashicorp.com"
  acl    = "public-read"
 /*
 versioning {
    enabled= true
  }*/

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

 

}

resource "aws_s3_bucket_object" "index" {
bucket = aws_s3_bucket.bucket.id
key = "index.html"
source ="content/calculator.html"
acl= "public-read"

}

resource "aws_s3_bucket_object" "error" {
bucket = aws_s3_bucket.bucket.id
key = "error.html"
source ="content/error.html"
acl = "public-read"

}

output "website_endpoint" {
  value = aws_s3_bucket.bucket.website_endpoint
}
/*
resource "aws_s3_bucket_policy" "s3bucketpolicy" {
 bucket = aws_s3_bucket.bucket.id 
 policy = data.aws_iam_policy_document.default.json
}

data "aws_iam_policy_document" "default" {
  statement{
   actions  = ["s3:GetObject"]
   resources = ["${aws_s3_bucket.bucket.arn}/*"]

   principals {
     type = "AWS"
     identifiers = ["*"]
   }
 }
}*/