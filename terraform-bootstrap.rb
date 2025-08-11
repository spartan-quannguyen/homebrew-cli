# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class project-bootstrapping < Formula
    desc "Project bootstrapping tool for Terraform projects"
    homepage "https://spartan-dev.io/"
    url "https://github.com/spartan-quannguyen/terraform-bootstrap/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "81d0125803e5aab8bc68375a66470b5210773a82c8ae6e62d88aa3d052fb8a7c"
    license "Apache-2.0"
  
    depends_on "jq"
    depends_on "terraform"
    depends_on "aws"
    depends_on "kubectl"
    depends_on "curl"
  
    def caveats
      <<~EOS
        Welcome to project bootstrapping tool for Terraform projects!
        This tool will help you to quickly set up a new Terraform project with best practices.
        Make sure you have the following tools installed:
        - jq
        - terraform
        - aws-cli
        - kubectl
        - curl
      EOS
    end
  
    def install
      bin.install 'main.sh'
    end
  end