# firmary 0.1.0. Written for each release; edits here are replaced.
class Firmary < Formula
  desc "Command-line client for Firmary, for people and AI agents"
  homepage "https://firmary.app/docs/cli"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://firmary.app/cli/0.1.0/firmary-cli-aarch64-apple-darwin.tar.xz"
      sha256 "cd2a07fdf8cfd038ae321edc337425cc5214f91da61022316483f20c537b9047"
    end
    on_intel do
      url "https://firmary.app/cli/0.1.0/firmary-cli-x86_64-apple-darwin.tar.xz"
      sha256 "f0b2cbfeaee160e7076cd6c3c727e68256b39da203fcc411cc0ca00ee5f4d624"
    end
  end
  on_linux do
    on_arm do
      url "https://firmary.app/cli/0.1.0/firmary-cli-aarch64-unknown-linux-musl.tar.xz"
      sha256 "a42202759cfccda98bf72a7b1124df67662229bec95630f97db7d5fefaaad1de"
    end
    on_intel do
      url "https://firmary.app/cli/0.1.0/firmary-cli-x86_64-unknown-linux-musl.tar.xz"
      sha256 "c981a951ec49a2dd13604390c9e257e73293aae612c3ea0f969302409f6807b7"
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
