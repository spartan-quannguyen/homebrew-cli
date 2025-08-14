# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ProjectBootstrap < Formula
    desc "Project bootstrapping tool for Terraform projects"
    homepage "https://spartan-dev.io/"
    url "https://github.com/spartan-quannguyen/terraform-bootstrap/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "cc2352f883202d4b99e7a057f5b8c44f4056fd2c2030287c5c6db4714b0712ba"
    license "Apache-2.0"
  
    depends_on "jq"
    depends_on "terraform"
    depends_on "awscli"
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
      bin.install 'installation.sh'
    end
  end