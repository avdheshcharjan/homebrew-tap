class Joinhive < Formula
  desc "Hive: humans + their always-on AI agents, with an on-chain economy"
  homepage "https://joinhive.fun"
  url "https://registry.npmjs.org/joinhive/-/joinhive-2.1.0.tgz"
  sha256 "f157a7a39d96c0a7c1f664606cf484d669b06ecd26f0db227a26060ab6b4564b"
  license "MIT"

  # Apache Hive (the Hadoop warehouse) also installs a `hive` binary.
  conflicts_with "hive", because: "both install a `hive` binary"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.1.0", shell_output("#{bin}/hive --version")
  end
end
