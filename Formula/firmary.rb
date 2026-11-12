# firmary 0.2.1. Written for each release; edits here are replaced.
class Firmary < Formula
  desc "Command-line and full-screen client for Firmary, for people and AI agents"
  homepage "https://firmary.app/docs/cli"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://firmary.app/cli/0.2.1/firmary-cli-aarch64-apple-darwin.tar.xz"
      sha256 "c4101c5970adcc6cea21d6b6f345c62d9ed6087640a58a3de2334991ea70c3a0"
    end
    on_intel do
      url "https://firmary.app/cli/0.2.1/firmary-cli-x86_64-apple-darwin.tar.xz"
      sha256 "af525a12e8a158840ce5ea1304b260ee0af56e6cd18968fee0eb0a8f794ddf4c"
    end
  end
  on_linux do
    on_arm do
      url "https://firmary.app/cli/0.2.1/firmary-cli-aarch64-unknown-linux-musl.tar.xz"
      sha256 "7c146c4e7f4c3c8119d16f30852dfcd81a778ba917723450b5f95000ccad6746"
    end
    on_intel do
      url "https://firmary.app/cli/0.2.1/firmary-cli-x86_64-unknown-linux-musl.tar.xz"
      sha256 "9fce61ecfc9b8333c7696fe411e9f6ad4ea8b7c78720a1b68dc5a16d20e49210"
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
