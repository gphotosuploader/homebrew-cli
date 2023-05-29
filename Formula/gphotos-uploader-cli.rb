# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GphotosUploaderCli < Formula
  desc "Mass upload media folders to your Google Photos account(s)"
  homepage "https://github.com/gphotosuploader/gphotos-uploader-cli"
  version "3.5.1"

  on_macos do
    url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v3.5.1/gphotos-uploader-cli_3.5.1_darwin_amd64.tar.gz"
    sha256 "8f86eb05aba3fc3d940d9b00778a3c5d916633663a85dce16d17f59e2f458853"

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
      url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v3.5.1/gphotos-uploader-cli_3.5.1_linux_amd64.tar.gz"
      sha256 "fdc5e484049a1ce8570446b4386156e71de31c69f8e78622f01b6103bdc9f9b8"

      def install
        bin.install "gphotos-uploader-cli"
      end
    end
  end

  test do
    system "#{bin}/gphotos-uploader-cli --help"
  end
end
