# Homebrew formula for AgentID CLI.
#
# Copy this file to your tap repository, e.g.:
#   homebrew-tap/Formula/agentid.rb
#
# Update version, urls, and sha256 values after each GitHub release.
# Run: ./packaging/homebrew/update-formula.sh v0.1.0

class Agentid < Formula
  desc "Git identity for AI coding agents"
  homepage "https://agentid.beautifulevilcompany.com"
  version "0.1.0"
  license "MIT"

  GITHUB_REPO = "beautifulevil/agentid-cli"
  BASE_URL = "https://github.com/#{GITHUB_REPO}/releases/download/v#{version}".freeze

  on_macos do
    on_arm do
      url "#{BASE_URL}/agentid-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AARCH64_APPLE_DARWIN"
    end
    on_intel do
      url "#{BASE_URL}/agentid-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_SHA256_X86_64_APPLE_DARWIN"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE_URL}/agentid-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AARCH64_LINUX_GNU"
    end
    on_intel do
      url "#{BASE_URL}/agentid-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_SHA256_X86_64_LINUX_GNU"
    end
  end

  def install
    bin.install "agentid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentid --version")
  end
end
