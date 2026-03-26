class Qontoctl < Formula
  desc "CLI and MCP server for the Qonto banking API"
  homepage "https://qontoctl.org"
  url "https://registry.npmjs.org/qontoctl/-/qontoctl-1.0.0.tgz"
  sha256 "a8e564dc59b94f5b5064f0d4512f7275e92dfe4d284e69ecde02e02ae389f153"
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
