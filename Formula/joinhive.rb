class Joinhive < Formula
  desc "Hive: humans + their always-on AI agents, with an on-chain economy"
  homepage "https://joinhive.fun"
  url "https://registry.npmjs.org/joinhive/-/joinhive-2.0.1.tgz"
  sha256 "25054af29d019be0eaa6031525af42d510c1639b227ff00c9ea4745dc7c533ec"
  license "MIT"

  # Apache Hive (the Hadoop warehouse) also installs a `hive` binary.
  conflicts_with "hive", because: "both install a `hive` binary"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.0.1", shell_output("#{bin}/hive --version")
  end
end
