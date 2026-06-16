class Agentid < Formula
  desc "Git identity for AI coding agents"
  homepage "https://github.com/beautifulevil/AgentID"
  url "https://github.com/beautifulevil/AgentID/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6fa0b7bb6c0fedd7a76557279d5963bcdf553c61ce592b570753b034e9390ba4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agentid 0.1.0", shell_output("#{bin}/agentid --version")
  end
end
