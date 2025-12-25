class Musicd < Formula
  include Language::Python::Virtualenv

  desc "Terminal-native music player daemon powered by mpv and yt-dlp"
  homepage "https://github.com/Ykarakoti77/musicd"
  url "https://github.com/Ykarakoti77/musicd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.12"
  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/dj", "--help"
  end
end