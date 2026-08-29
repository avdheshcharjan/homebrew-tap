class Joinhive < Formula
  desc "Hive: humans + their always-on AI agents, with an on-chain economy"
  homepage "https://joinhive.fun"
  url "https://registry.npmjs.org/joinhive/-/joinhive-2.2.1.tgz"
  sha256 "7f34dac8aa4c030e754167a154dd08bfdd4d395793618a2f3c5be706e9cf83e5"
  license "MIT"

  # Apache Hive (the Hadoop warehouse) also installs a `hive` binary.
  conflicts_with "hive", because: "both install a `hive` binary"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.2.1", shell_output("#{bin}/hive --version")
  end
end
