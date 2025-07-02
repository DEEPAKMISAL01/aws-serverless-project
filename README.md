# AWS Serverless Email Sender

![License](https://img.shields.io/badge/license-MIT-blue.svg)

This project is a **serverless application** built with **AWS Lambda**, **API Gateway**, and **Amazon SES** to send emails via a RESTful API.

---

## 🌐 Live API Endpoint

**POST**

[https://fj1xdzea04.execute-api.us-east-1.amazonaws.com/dev](https://fj1xdzea04.execute-api.us-east-1.amazonaws.com/dev)

---

## ✨ Features

- **Serverless Architecture**  
  Fully managed, auto-scaling infrastructure—no servers to maintain.

- **REST API**  
  API Gateway exposes an HTTP endpoint to trigger email sending.

- **AWS Lambda**  
  Contains the business logic for composing and sending emails.

- **Amazon SES**  
  Secure, reliable email delivery service.

---

## 📂 Project Structure

```
.
├── handler.js          # Lambda function handler
├── serverless.yml      # Serverless Framework configuration
├── package.json        # Node.js dependencies
└── README.md
```

---

## 🛠️ Prerequisites

Before deploying, ensure you have:

- An **AWS account**
- Verified sender and recipient email addresses in **Amazon SES**
- **IAM permissions** for Lambda, API Gateway, and SES
- [Serverless Framework](https://www.serverless.com/framework/docs/getting-started) installed globally
- Node.js and npm installed

---

## 🚀 Deployment

Follow these steps to deploy the application:

1. **Install Serverless Framework (if not installed):**

   ```bash
   npm install -g serverless
   ```

2. **Install project dependencies:**

   ```bash
   npm install
   ```

3. **Configure AWS credentials:**

   ```bash
   serverless config credentials --provider aws --key YOUR_AWS_ACCESS_KEY --secret YOUR_AWS_SECRET_KEY
   ```

4. **Deploy to AWS:**

   ```bash
   serverless deploy
   ```

After successful deployment, the CLI will display the API endpoint URL.

---

## 🧪 Example Usage

Use `curl` or Postman to test the API:

```bash
curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "to": "recipient@example.com",
    "subject": "Test Email",
    "body": "Hello from AWS Serverless!"
  }' \
  https://fj1xdzea04.execute-api.us-east-1.amazonaws.com/dev
```

---

## ⚙️ Environment Variables

Make sure to set the following environment variables (either in `serverless.yml` or via the AWS Console):

- `SES_REGION` — The AWS region for SES (e.g., `us-east-1`)
- `SOURCE_EMAIL` — The verified sender email address

---

## 📝 License

This project is licensed under the **MIT License**.

---

## 🙌 Acknowledgments

- [AWS Lambda Documentation](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
- [Amazon SES Documentation](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html)
- [API Gateway Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html)
- [Serverless Framework](https://www.serverless.com/)

---

## 📎 Repository

[GitHub Repository](https://github.com/DEEPAKMISAL01/aws-serverless-project.git)
