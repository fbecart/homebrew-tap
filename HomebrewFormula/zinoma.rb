class Zinoma < Formula
  version '0.15.1'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.1/zinoma-0.15.1-x86_64-apple-darwin.tar.gz"
    sha256 "30533805aa34b4fa3c8b0c822fe377f0de631a9272a16d1daf4377b01aea5ffb"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.1/zinoma-0.15.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a4e70b9a0038ddf2158923e1eac9dc2a3c1b20e464bf866891bb49eeb846e3f8"
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
