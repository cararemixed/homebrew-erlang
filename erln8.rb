require 'formula'
class Erln8 < Formula

  homepage ''
  url 'http://github.com/strmpnk/erln8'

  depends_on 'glib'
  depends_on 'pkg-config' => :build
  depends_on 'gettext'
  depends_on 'libffi'
  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'unixodbc'

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
    bash_completion.install 'bash_completion/erln8'
  end

  test do
    system "#{bin}/erln8 --help"
  end

end
