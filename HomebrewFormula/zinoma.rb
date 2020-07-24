class Zinoma < Formula
  version '0.19.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.0/zinoma-0.19.0-x86_64-apple-darwin.tar.gz"
    sha256 "a003c631844eaea50e2ec290add444252bde1ddefdc98a899ada6563dfb9731b"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.0/zinoma-0.19.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "cf27bc5106464e4f2dc9eb7f67e011572f8e8ebdaec0a5b5189df11d9ee7e45e"
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
