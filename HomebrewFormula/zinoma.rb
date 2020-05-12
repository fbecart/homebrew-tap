class Zinoma < Formula
  version '0.4.0'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.4.0/zinoma-0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "323f17695c4a167dcbe03ac3bf382836ab6d11824e46e8eda5734f2dd505f50b"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.4.0/zinoma-0.4.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "962e4e893a7cfeb9fc4a17738dac0413e31e4b50001caaf6bb8c8ceb745b0de8"
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
