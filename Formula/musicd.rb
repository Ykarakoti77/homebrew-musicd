class Musicd < Formula
  include Language::Python::Virtualenv

  desc "Terminal-native music player daemon powered by mpv and yt-dlp"
  homepage "https://github.com/Ykarakoti77/musicd"
  url "https://github.com/Ykarakoti77/musicd/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1cf847421644201ebc54a27be7c731ce6739b7543b38510787fa68cbb4a3320c"
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
