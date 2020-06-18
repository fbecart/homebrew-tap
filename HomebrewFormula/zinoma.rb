class Zinoma < Formula
  version '0.16.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.16.0/zinoma-0.16.0-x86_64-apple-darwin.tar.gz"
    sha256 "0c044e64ab61aeef3eb89ab538af7a0c6480a6d955551aa090d1ebbcbd8c074f"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.16.0/zinoma-0.16.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3de2faa5999a488737d9ac0bdc55a07b07691dfe996e43eca7e8a17267eea5f3"
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
