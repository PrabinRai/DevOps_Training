import boto3

client = boto3.client('ec2')

#creating an instance

response = client.run_instances(
     ImageId='ami-0a0ad6b70e61be944',  
     MinCount=1,
     MaxCount=2,
     InstanceType='t2.micro',
    # KeyName='devops'

) 

for instance in response['Instances']:
    print(instance['InstanceId'])