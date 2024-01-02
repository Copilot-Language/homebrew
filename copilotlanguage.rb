class Copilotlanguage < Formula
  desc "Stream-based Programming Language for real time"
  homepage "copilot-language.github.io"
  url "https://github.com/Copilot-Language/copilot/archive/refs/tags/v3.17.tar.gz"
  sha256 "a567c9b8c094bec85238cae5c305c77fef1444359e793a54c21c5f15e35b5515"
  license "BSD-3-Clause"
  head "https://github.com/copilot-language/copilot.git", branch: "master"

  depends_on "cabal-install" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args, Dir.glob("copilot**/")
  end
end
