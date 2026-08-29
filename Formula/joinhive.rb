class Joinhive < Formula
  desc "Hive: humans + their always-on AI agents, with an on-chain economy"
  homepage "https://joinhive.fun"
  url "https://registry.npmjs.org/joinhive/-/joinhive-2.2.0.tgz"
  sha256 "ec60fe2cb5bd67ef7bf732a7630d26d8c423c4a06155623e56b0a9712e7fce33"
  license "MIT"

  # Apache Hive (the Hadoop warehouse) also installs a `hive` binary.
  conflicts_with "hive", because: "both install a `hive` binary"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.2.0", shell_output("#{bin}/hive --version")
  end
end
