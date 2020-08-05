# This file was generated by GoReleaser. DO NOT EDIT.
class GphotosUploaderCli < Formula
  desc "Mass upload media folders to your Google Photos account(s)"
  homepage "https://github.com/gphotosuploader/gphotos-uploader-cli"
  version "1.0.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v1.0.8/gphotos-uploader-cli_1.0.8_darwin_amd64.tar.gz"
    sha256 "75d525ba3918ab9d9bef49fe04c1fc37e3cef1c4d624ef6ac991cb07307b1c86"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/gphotosuploader/gphotos-uploader-cli/releases/download/v1.0.8/gphotos-uploader-cli_1.0.8_linux_amd64.tar.gz"
      sha256 "01cdaaf26037a9932c5c8007a190db16d7afea921cd3306d7ed7bcb4f8d03262"
    end
  end

  def install
    bin.install "gphotos-uploader-cli"
  end

  test do
    system "#{bin}/gphotos-uploader-cli --help"
  end
end
