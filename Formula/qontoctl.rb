class Qontoctl < Formula
  desc "CLI and MCP server for the Qonto banking API"
  homepage "https://qontoctl.org"
  url "https://registry.npmjs.org/qontoctl/-/qontoctl-2.0.2.tgz"
  sha256 "3a4b9f75f87762ccc65fa214ed8338d6f9b4d86b2db2988cad2fba34821c3f99"
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
