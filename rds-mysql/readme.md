# 🚀 Deploying AWS MYSQL RDS: Two Approaches  

There are **two ways** to deploy an **Amazon RDS instance**:  

1️⃣ **Using Terraform AWS RDS Module** – More automated, reusable, and secure.  
2️⃣ **Using `aws_db_instance` Resource** – Simpler but requires manual configuration.  

Both methods achieve the same result but differ in flexibility and security.

---

### Key notes:
comment of the file before deploying.
RDS must be in two subnets.
cidr_blocks = "172.31.0.0/16" # this is default vpc cidr block


---