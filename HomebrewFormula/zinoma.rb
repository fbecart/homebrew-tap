class Zinoma < Formula
  version '0.5.1'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.5.1/zinoma-0.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "d1a04fe3b976922575a1450647a698df39767c852c49176ca6904575fb382635"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.5.1/zinoma-0.5.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "eb72f838312d541817a9dc6761c7505336c559897e1e98d13a79bf262c9a4763"
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
