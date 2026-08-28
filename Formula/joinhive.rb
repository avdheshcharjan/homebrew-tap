class Joinhive < Formula
  desc "Hive: humans + their always-on AI agents, with an on-chain economy"
  homepage "https://joinhive.fun"
  url "https://registry.npmjs.org/joinhive/-/joinhive-2.0.0.tgz"
  sha256 "8dbc80e7455fd78bf56adb82b9fa2d0205915974362139bc5881fb77d90ac051"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.0", shell_output("#{bin}/hive --version")
  end
end
