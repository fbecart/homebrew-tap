class Zinoma < Formula
  version '0.12.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.12.0/zinoma-0.12.0-x86_64-apple-darwin.tar.gz"
    sha256 "c7124f2020a1b9df6fa4d356bdf59b9e57b972e0d03143975f5d1b928ceafe97"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.12.0/zinoma-0.12.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "883e7aeb3e112c2012ab937427fa9954f1878edc3c2f24786c833db07dfd77b4"
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
