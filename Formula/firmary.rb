# firmary 0.2.0. Written for each release; edits here are replaced.
class Firmary < Formula
  desc "Command-line and full-screen client for Firmary, for people and AI agents"
  homepage "https://firmary.app/docs/cli"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://firmary.app/cli/0.2.0/firmary-cli-aarch64-apple-darwin.tar.xz"
      sha256 "c18a42518a1f6eb78df39605cba3b6d8c1931c30ef7eeafeb5678cb877ec5ffe"
    end
    on_intel do
      url "https://firmary.app/cli/0.2.0/firmary-cli-x86_64-apple-darwin.tar.xz"
      sha256 "e395aede52a9cf68c547a81dc47e70acb3d8ae0584f2be857deb34395bebe791"
    end
  end
  on_linux do
    on_arm do
      url "https://firmary.app/cli/0.2.0/firmary-cli-aarch64-unknown-linux-musl.tar.xz"
      sha256 "0afe16b728d83b4353ec6fab6e1622e0de93a1631098c23229196a384162c57c"
    end
    on_intel do
      url "https://firmary.app/cli/0.2.0/firmary-cli-x86_64-unknown-linux-musl.tar.xz"
      sha256 "0993c38422517d5dd1257cdd9bc11d380c3fd7da62a786e79ef174b1ff957bae"
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
