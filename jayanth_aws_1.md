# Assignment 01


#### This assignment is all about deployment strategies
- Recreate deployment 
- Rolling deployment 
- Blue-green deployment 
- A/B  deployment
- Canary deployment 

### Steps

#### 1. Created VPC
#### 2. Create subnet (private & public)
#### 3. IGT (For public servers)
#### 4. NAT gateway (For private servers)
#### 5. Define public and private routes in route table
#### 6. Associate subnets in public and private route table
#### 7. Launch jump server in public subnet
#### 8. Launch Nginx server in private subnet 
#### 9. Configure Nginx server with (V1)
#### 10. Create AMI for (V1) configuration
#### 11. Configure Nginx server with (V2)
#### 12. Create AMI for (V2) configuration
#### 13. Create launch Template for V1
#### 14 Create launch Template for V2
#### 15. Create Target group
#### 16. Create Load balancer (Application Load Balancer)
#### 17. Create Autoscaling group

### 1) Recreate deployment : 

  - Recreate deployment strategy will bring down the entire existing application and replace it with the updated version.

  - While this will result in a certain period of downtime, it ensures a clean and straightforward transition to the new version. 

#### Steps for recreate deployment :

![image](https://github.com/LuckyJayanth/task1/assets/153024353/f8789fd2-f0e6-4fc3-9303-f9666fbbf18d)

![image](https://github.com/LuckyJayanth/task1/assets/153024353/57fec122-580b-4396-9ad3-2b19b64e95af)

![image](https://github.com/LuckyJayanth/task1/assets/153024353/4f3de3d3-4072-4e79-9615-d2ac26a63905)

#### 1. Changing launch template with new version

![image](https://github.com/LuckyJayanth/task1/assets/153024353/c43d6ed8-723f-407c-9321-1956f06fa38e)

make Desired capacity, Minimum capacity, Maximum capacity to 0

![image](https://github.com/LuckyJayanth/task1/assets/153024353/d5b79fb0-0a9a-4bd5-8bdf-e8dad86cf7e5)

at that time we will face downtime

![image](https://github.com/LuckyJayanth/task1/assets/153024353/3cfcaecb-4d01-4570-8a55-41c9f0217fe4)

Make chnages in Desired capacity-3, Minimum capacity-1, Maximum capacity-3

![image](https://github.com/LuckyJayanth/task1/assets/153024353/eabe5854-2f72-4607-b87f-3da98782a215)

with New version Launch Template

![image](https://github.com/LuckyJayanth/task1/assets/153024353/772b5ab6-448f-406c-8662-1d9d505de22c)

### 2) Rolling deployment

- Rolling deployments will gradually update a subset of instances while keeping the rest of the application running. 

- This strategy ensures continuous availability and minimizes downtime.

In Autoscaling group go to the Instance refresh setting

![image](https://github.com/OT-MyGurukulam/AWS_Batch24/assets/153024353/a12832e1-8e93-4262-94bc-69f2d2dac110)

During this time your both version will be availble and the older version will remove slowly.

![image](https://github.com/OT-MyGurukulam/AWS_Batch24/assets/153024353/54ac106b-973d-41c1-a7a5-3d645744db70)

![image](https://github.com/OT-MyGurukulam/AWS_Batch24/assets/153024353/a5f8e759-83d7-4039-9790-47939abdf98a)

![image](https://github.com/OT-MyGurukulam/AWS_Batch24/assets/153024353/36bf54f3-28ce-434f-a4dc-9181c9dff51a)

![image](https://github.com/OT-MyGurukulam/AWS_Batch24/assets/153024353/7ca7abf9-bd93-4895-8c67-03fb54fb3304)

Once the instance refresh completed to 100% the instances running with older version will be drained and terminated successfully.

![image](https://github.com/OT-MyGurukulam/AWS_Batch24/assets/153024353/82c50765-c932-40d3-99c9-c143f73a54ec)
