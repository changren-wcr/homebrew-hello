class HelloWorld < Formula
  desc "HelloWorld in Golang"
  homepage "https://github.com/changren-wcr/hello-go"
  url "https://github.com/changren-wcr/hello-go/archive/refs/tags/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "eb14363c20a59ffaaadaa2f3c7c1aa5ee56b7b90e93f0a3f0b119092686ceeb8"
  ## :build means that dependency is a build-time only dependency
  depends_on "go" => :build

  def install
    system "go", "build", "-o", "hello" ## go build -o hello
    bin.install "hello"
  end
end