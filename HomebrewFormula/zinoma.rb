class Zinoma < Formula
  version '0.19.6'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.6/zinoma-0.19.6-x86_64-apple-darwin.tar.gz"
    sha256 "de7d4f1463aa626d56a5d97ea1760913f86fcdfc2be87c2eb5e0f38f93eb073f"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.6/zinoma-0.19.6-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4651797f9c87613bf87fa2b2fec922066fa0a042a061d45a8fce6a67a7bffa78"
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
