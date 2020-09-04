class Zinoma < Formula
  version '0.19.1'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.1/zinoma-0.19.1-x86_64-apple-darwin.tar.gz"
    sha256 "9f404948cb75395b913fcfa363cc49d0312e97245805380ba9523d355799ed20"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.1/zinoma-0.19.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "636cef8ae4862af4d8ede043b98bdae53ac24cfd2cd079da672a8c8b81e1c710"
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
