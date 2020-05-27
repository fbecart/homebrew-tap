class Zinoma < Formula
  version '0.9.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.9.0/zinoma-0.9.0-x86_64-apple-darwin.tar.gz"
    sha256 "99bab04d1230579ee5d15152f2bb5156abc1148651a499e878be03d2f52a4f75"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.9.0/zinoma-0.9.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a1a6846e567cf645f19a318761f5914fb6eb04ac14b3e427a1abab2ace0afceb"
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
