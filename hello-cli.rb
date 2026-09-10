class HelloCli < Formula
  desc "Hello-world test binary for validating the dual-arch Homebrew formula mechanism"
  homepage "https://github.com/amohammad-illumina/homebrew-test"
  url "https://raw.githubusercontent.com/amohammad-illumina/homebrew-test/main/dist/1.0.0/amd64-osx/hello"
  sha256 "6e5221f0b931a44e76994e82cc41c1669402bf8ba20287f21d880f22c8b82bc5"

  def install
    bin.install "hello"
  end

  test do
    system "#{bin}/hello"
  end
end
