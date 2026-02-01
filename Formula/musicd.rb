class Musicd < Formula
  include Language::Python::Virtualenv

  desc "Terminal-native music player daemon powered by mpv and yt-dlp"
  homepage "https://github.com/Ykarakoti77/musicd"
  url "https://github.com/Ykarakoti77/musicd/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "885cded8d1c2c24eac2d62e8eb815e2a327117dbddc028f561f2f4a3818bba77"
  license "MIT"

  depends_on "mpv"
  depends_on "python@3.12"
  depends_on "yt-dlp"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
