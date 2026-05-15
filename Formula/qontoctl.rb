class Qontoctl < Formula
  desc "CLI and MCP server for the Qonto banking API"
  homepage "https://qontoctl.org"
  url "https://registry.npmjs.org/qontoctl/-/qontoctl-2.0.1.tgz"
  sha256 "4a8366ae313d445f8601ea317e798307a177847947c2541a2e33dab05793803d"
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
