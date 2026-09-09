class HelloCli < Formula
  desc "Hello-world test binary for validating the dual-arch Homebrew formula mechanism"
  homepage "https://github.com/amohammad-illumina/homebrew-test"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://raw.githubusercontent.com/amohammad-illumina/homebrew-test/main/dist/#{version}/arm64-osx/hello"
      sha256 "de490829f8b41dff6579ccea97e7fcdc5ce1eedbc71f98d23891571c2a3fcda4"
    end
    on_intel do
      url "https://raw.githubusercontent.com/amohammad-illumina/homebrew-test/main/dist/#{version}/amd64-osx/hello"
      sha256 "6e5221f0b931a44e76994e82cc41c1669402bf8ba20287f21d880f22c8b82bc5"
    end
  end

  def install
    bin.install "hello"
  end

  test do
    system "#{bin}/hello"
  end
end
