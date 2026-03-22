class Qontoctl < Formula
  desc "CLI and MCP server for the Qonto banking API"
  homepage "https://qontoctl.org"
  url "https://registry.npmjs.org/qontoctl/-/qontoctl-0.6.0.tgz"
  sha256 "93d5db1f1580230a1eb08467b065d3e70f054a62ed56ef0ba51de35098d96bd0"
  license "AGPL-3.0-only"

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/qontoctl --version")
  end
end
