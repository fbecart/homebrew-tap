class Zinoma < Formula
  version '0.19.4'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.4/zinoma-0.19.4-x86_64-apple-darwin.tar.gz"
    sha256 "c8044afe6be803a408531e38141c1b8cf36513b8e424ea061789f2edbe39f8b2"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.19.4/zinoma-0.19.4-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a0416d9af27c16c7a2a2a68096437f76949a981dc72ecd6fc2cb4dc228d9f395"
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
