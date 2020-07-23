class Zinoma < Formula
  version '0.18.1'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.18.1/zinoma-0.18.1-x86_64-apple-darwin.tar.gz"
    sha256 "8c3b472ed0629ed6f1baf46d9ff89edbc49805049949c05d917dd94260fc66ce"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.18.1/zinoma-0.18.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5165c380894af3bbf390c59f57554fe46ee3c7be4ff1804027d79cb73e333258"
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
