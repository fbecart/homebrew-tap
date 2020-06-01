class Zinoma < Formula
  version '0.13.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.13.0/zinoma-0.13.0-x86_64-apple-darwin.tar.gz"
    sha256 "871b76fb7e7660f004799dbc45080de737d5a2a8268e3a4ef556e5631e2fb1f9"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.13.0/zinoma-0.13.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "cc033dfa09dbaed32ce92a43cdfb796eccc2522144e09e518ebd8772966ce11a"
  end

  def install
    bin.install "zinoma"

    bash_completion.install "complete/zinoma.bash"
    zsh_completion.install "complete/_zinoma"
    fish_completion.install "complete/zinoma.fish"
  end

  test do
    system "#{bin}/zinoma --version"
  end
end
