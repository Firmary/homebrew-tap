# firmary 0.2.2. Written for each release; edits here are replaced.
class Firmary < Formula
  desc "Command-line and full-screen client for Firmary, for people and AI agents"
  homepage "https://firmary.app/docs/cli"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://firmary.app/cli/0.2.2/firmary-cli-aarch64-apple-darwin.tar.xz"
      sha256 "ba1602b5d1233935070b5fdd153952da54f27d53404a803bd29010470e246835"
    end
    on_intel do
      url "https://firmary.app/cli/0.2.2/firmary-cli-x86_64-apple-darwin.tar.xz"
      sha256 "783aa51ec48d749f61793e58d83cf48b9a54d1fdf9915bd72467763f1dae3b7e"
    end
  end
  on_linux do
    on_arm do
      url "https://firmary.app/cli/0.2.2/firmary-cli-aarch64-unknown-linux-musl.tar.xz"
      sha256 "7e583fc3b02fefcac1298b544a43456f0ea139a35eb76180ef03c5739bda9269"
    end
    on_intel do
      url "https://firmary.app/cli/0.2.2/firmary-cli-x86_64-unknown-linux-musl.tar.xz"
      sha256 "5b6941200a65bc6197605a54adc3b48b11b1bc95c77525586f323bd63ffeba96"
    end
  end

  def install
    bin.install "firmary"
    generate_completions_from_executable(bin/"firmary", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/firmary --version")
  end
end
