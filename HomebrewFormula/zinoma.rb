class Zinoma < Formula
  version '0.6.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.6.0/zinoma-0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "ebf97f78aeab2595353b14d405f395a514c2e5f00c6cf9a3592f550339251e33"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.6.0/zinoma-0.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "392af0f872a03a3a52fe886b604f0a7def06245d0a3b489e26f488857f1bcfd2"
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
