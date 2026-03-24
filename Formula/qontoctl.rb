class Qontoctl < Formula
  desc "CLI and MCP server for the Qonto banking API"
  homepage "https://qontoctl.org"
  url "https://registry.npmjs.org/qontoctl/-/qontoctl-0.10.1.tgz"
  sha256 "fd0c071e42612ef2de528ef6d4dd34f098008d11f2990a9e8847169d8b5184ba"
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
