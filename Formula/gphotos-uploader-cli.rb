# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GphotosUploaderCli < Formula
  desc "Mass upload media folders to your Google Photos account(s)"
  homepage "https://github.com/gphotosuploader/gphotos-uploader-cli"
  version "4.3.0"

  on_macos do
    url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v4.3.0/gphotos-uploader-cli_4.3.0_darwin_amd64.tar.gz"
    sha256 "1809306be26c9f4551961498ecb2ccbb53fa9afab28e466c6915ba7867b28a32"

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
      url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v4.3.0/gphotos-uploader-cli_4.3.0_linux_amd64.tar.gz"
      sha256 "0ddc77838b3183b3ec202785f18692ab892400319e249d62a1bb20f12e109124"

      def install
        bin.install "gphotos-uploader-cli"
      end
    end
  end

  test do
    system "#{bin}/gphotos-uploader-cli --help"
  end
end
