require 'aws-sdk-s3'

class S3Service
  def initialize(bucket: ENV['AWS_BUCKET'], region: ENV['AWS_REGION'])
    @bucket = bucket
    @region = region
    @client = Aws::S3::Client.new(region: @region)
  end

  def fetch_video_url(key)
    signer = Aws::S3::Presigner.new(client: @client)
    url = signer.presigned_url(:get_object, bucket: @bucket, key: key, expires_in: 604800)
    url.to_s
  end
end
