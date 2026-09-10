class HelloCli < Formula
  desc "Hello-world test binary for validating the dual-arch Homebrew formula mechanism"
  homepage "https://github.com/amohammad-illumina/homebrew-test"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://raw.githubusercontent.com/amohammad-illumina/homebrew-test/main/dist/#{version}/arm64-osx/hello"
      sha256 "79f648c34095e1b915f3b674e23d817301ea19323445c7457fe27e9fac3a3a83"
    end
    on_intel do
      url "https://raw.githubusercontent.com/amohammad-illumina/homebrew-test/main/dist/#{version}/amd64-osx/hello"
      sha256 "3ca8f49d41c3ad2c259038af9999296c0604e0bd955e114388cb12164c8985a6"
    end
  end

  def install
    bin.install "hello"
  end

  test do
    system "#{bin}/hello"
  end
end
