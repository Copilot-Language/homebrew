class Copilotlanguage < Formula
  desc "Stream-based Programming Language for real time"
  homepage "copilot-language.github.io"
  license "BSD-3-Clause"
  head "https://github.com/copilot-language/copilot.git", branch: "master"

  depends_on "cabal-install" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args, "copilot-3.17"
  end
end
