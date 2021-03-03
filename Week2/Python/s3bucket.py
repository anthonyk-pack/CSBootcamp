import sys
import boto3

try:
    def main():
        create_s3bucket(TonysBucket447)

except Exception as e:
    print(e)

def create_s3bucket(TonysBucket447):
    s3_bucket=boto3.client(
        's3',
    )

    bucket = s3_bucket.create_bucket(
        Bucket=TonysBucket447,
        ACL='private',
    )

    print(bucket)

TonysBucket447 = sys.argv[1]

if __name__ == '__main__':
    main()
