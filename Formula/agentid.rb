class Agentid < Formula
  desc "Git identity for AI coding agents"
  homepage "https://github.com/beautifulevil/AgentID"
  url "https://github.com/beautifulevil/AgentID/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "464b36432af1832c75b97f72541b75ec37ae3361e9ef792480467e7de0c2d66f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agentid 0.1.0", shell_output("#{bin}/agentid --version")
  end
end
