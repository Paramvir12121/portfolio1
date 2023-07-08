terraform {
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.5.0"
    }
  }
  
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_budgets_budget" "budget_portfolio_project" {
  name              = "monthly_budget"
  budget_type       = "COST"
  limit_amount      = "12"
  limit_unit        = "USD"
  time_period_end   = "2087-05-30_00:00"
  time_period_start = "2023-05-01_00:00"
  time_unit         = "MONTHLY"

  # cost_filter {
  #   name = "Service"
  #   values = [
  #     "Amazon Elastic Compute Cloud - Compute",
  #   ]
  # }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 50
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["paramvir.singh.ic@gmail.com","paramvir12121@gmail.com"]
  }
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 75
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["paramvir.singh.ic@gmail.com","paramvir12121@gmail.com"]
  }
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 90
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["paramvir.singh.ic@gmail.com","paramvir12121@gmail.com"]
  }
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 95
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["paramvir.singh.ic@gmail.com","paramvir12121@gmail.com"]
  }
}