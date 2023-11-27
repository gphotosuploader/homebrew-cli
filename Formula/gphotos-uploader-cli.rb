# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GphotosUploaderCli < Formula
  desc "Mass upload media folders to your Google Photos account(s)"
  homepage "https://github.com/gphotosuploader/gphotos-uploader-cli"
  version "4.2.1"

  on_macos do
    url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v4.2.1/gphotos-uploader-cli_4.2.1_darwin_amd64.tar.gz"
    sha256 "a9e4ffc23723657bfd6fdf3f11ae209c9820ca7becf9805e9716985b4e2f77b6"

    def install
      bin.install "gphotos-uploader-cli"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the GphotosUploaderCli
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v4.2.1/gphotos-uploader-cli_4.2.1_linux_amd64.tar.gz"
      sha256 "e88300e0a96ff03e5980e9feec72ddc3a3f95992f9e44583f78810ddff75be4d"

      def install
        bin.install "gphotos-uploader-cli"
      end
    end
  end

  test do
    system "#{bin}/gphotos-uploader-cli --help"
  end
end
