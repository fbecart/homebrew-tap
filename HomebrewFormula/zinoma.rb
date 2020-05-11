require  'formula'
class Zinoma < Formula
  version '0.3.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/#{version}/zinoma-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "99b9094a1fcd28ed82b2bece1f368dcd466b696eabe8e05e3a02d32cd2eb442a"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/#{version}/zinoma-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "23ecf84c0f10dd5247666e65594b408ffad8efbe062b36c9e237cc63bff8559e"
  end

  def install
    bin.install "zinoma"
  end

  test do
    system "#{bin}/zinoma --version"
  end
end
