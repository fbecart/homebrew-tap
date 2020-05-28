class Zinoma < Formula
  version '0.11.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.11.0/zinoma-0.11.0-x86_64-apple-darwin.tar.gz"
    sha256 "7ce68a2bd70052f8887fd51c440ebd604d2cc549aa14f454f7c1f9416900fd91"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.11.0/zinoma-0.11.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f425d165eafbd41692910f20a424ca366c597837ebbcf435ce30ddc71fc0d081"
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
