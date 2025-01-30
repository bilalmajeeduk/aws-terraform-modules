### 📌 **Terraform Portfolio Repository**  
## I'm 3x AWS certified

```md
# 🚀 Terraform AWS Cloud Infrastructure Portfolio  

Welcome to my Terraform portfolio! This repository showcases various Terraform modules and projects that I have built to design, automate, and manage AWS cloud infrastructure efficiently. Each project is modular, scalable, and follows best practices in Infrastructure as Code (IaC).  

## 🏗️ Projects Overview  

### 1️⃣ **EKS Complete Cluster**  
A fully automated Amazon EKS cluster deployment with essential cloud-native resources:  
- 🏗 **Resources:**  
  - `EKS` (Elastic Kubernetes Service)  
  - `Cert-Manager` for TLS certificate automation  
  - `Helm` for package management  
  - `Karpenter` for auto-scaling nodes  
  - `Fargate Profile` for serverless Kubernetes workloads  
  - `EKS Add-ons` (VPC CNI, CoreDNS, KubeProxy)  
  - `Keycloak` for authentication and identity management  

🔹 **Key Features:**  
- Uses Terraform modules to provision the entire EKS environment  
- Automates scaling and provisioning of workloads with Karpenter & Fargate  
- Secures workload authentication with Keycloak  
- Implements best practices for EKS networking and security  
---  

### 2️⃣ **Multi-Region Deployment**  
A Terraform module for deploying cloud resources across multiple AWS regions for high availability and redundancy.  

🔹 **Key Features:**  
- Automates deployment of infrastructure across different AWS regions  
- Ensures high availability and disaster recovery by distributing workloads  
- Uses Terraform remote state for managing multi-region infrastructure  

---  

### 3️⃣ **S3 Static Website with CDN & Route 53**  
A cost-effective, scalable, and highly available static website hosting solution on AWS.  

🔹 **Key Features:**  
- 🌐 **Amazon S3** for static file hosting  
- 🚀 **CloudFront CDN** for global content delivery and caching  
- 🔒 **HTTPS Support** with managed SSL certificates  
- 🌍 **Route 53** for domain name resolution and traffic routing  


---  

### 4️⃣ **VPC, ASG, ALB, and EC2 Deployment**  
A fully modular Terraform project to deploy a robust AWS architecture with networking and compute resources.  

🔹 **Key Features:**  
- 🏢 **VPC** with public and private subnets  
- 🔄 **Auto Scaling Group (ASG)** for dynamic scaling of EC2 instances  
- 🔀 **Application Load Balancer (ALB)** for efficient traffic routing  
- 🖥️ **EC2 Instances** provisioned with Terraform

---

## 📜 **Best Practices & Approach**  
- 📌 **Infrastructure as Code (IaC):** All resources are defined in Terraform for repeatability and automation.  
- 🛡 **Security-First:** Implements security best practices using IAM roles, encryption, and least-privilege access policies.  
- 🔄 **Scalability:** Designed to handle production workloads efficiently with auto-scaling and fault tolerance.  
- 📊 **Observability:** Integrates AWS CloudWatch, Prometheus, loki and Grafana for monitoring infrastructure health.  

---

## 🤝 **Connect With Me**  
💼 **LinkedIn:** https://linkedin.com/in/bilalmajeeduk/

Feel free to explore the repository and contribute! 🚀  
# aws-terraform-modules
