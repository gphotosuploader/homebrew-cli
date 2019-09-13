# This file was generated by GoReleaser. DO NOT EDIT.
class GphotosUploaderCli < Formula
  desc "Mass upload media folders to your Google Photos account(s)"
  homepage "https://github.com/gphotosuploader/gphotos-uploader-cli"
  version "0.8.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v0.8.1/gphotos-uploader-cli_0.8.1_darwin_amd64.tar.gz"
    sha256 "4a0fb7161640b6eb7995d36d4b5fde1d56df06ff24dd7b265ed4b74befed624f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v0.8.1/gphotos-uploader-cli_0.8.1_linux_amd64.tar.gz"
      sha256 "59c1b25f0f6b488481054febf719873ea5b7501d55d2158ab58b55a0f45fab31"
    end
  end

  def install
    bin.install "gphotos-uploader-cli"
  end

  test do
    system "#{bin}/gphotos-uploader-cli --help"
  end
end
