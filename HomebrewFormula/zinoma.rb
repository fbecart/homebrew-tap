class Zinoma < Formula
  version '0.18.2'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.18.2/zinoma-0.18.2-x86_64-apple-darwin.tar.gz"
    sha256 "274956eaf2846400dc07f8aba11e67366f185905cd2c3e20dca2768c097b1545"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.18.2/zinoma-0.18.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2030709b05d2d668b0716a5e90d83045ac6ff4c300212a4d20255b8888f4bcf5"
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
