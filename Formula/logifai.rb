# typed: false
# frozen_string_literal: true

# This is a template. CI replaces 1.0.0 and __SHA256_*__ placeholders on release.
class Logifai < Formula
  desc "Auto-capture development logs for Claude Code"
  homepage "https://github.com/tomoyaf/logifai"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomoyaf/logifai/releases/download/v1.0.0/logifai-darwin-arm64"
      sha256 "cac26f9746ae1eb6147be864fae2ab78209933554d74c440ae55b2300871a26b"

      def install
        bin.install "logifai-darwin-arm64" => "logifai"
      end
    else
      url "https://github.com/tomoyaf/logifai/releases/download/v1.0.0/logifai-darwin-x64"
      sha256 "04afde403798358d14139be25f864acca9a324fcb7e4ae2acbcfaec176eb5557"

      def install
        bin.install "logifai-darwin-x64" => "logifai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomoyaf/logifai/releases/download/v1.0.0/logifai-linux-arm64"
      sha256 "3724ae517e749b5173c05d340f975d4b39bac1ec09468a8c15192af2a63dbac1"

      def install
        bin.install "logifai-linux-arm64" => "logifai"
      end
    else
      url "https://github.com/tomoyaf/logifai/releases/download/v1.0.0/logifai-linux-x64"
      sha256 "7806cc089ad5537a9c78a5592a260cdb15e9168068d0e31b530f34bafc1e31f9"

      def install
        bin.install "logifai-linux-x64" => "logifai"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logifai --version")
  end
end
