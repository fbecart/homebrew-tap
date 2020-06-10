class Zinoma < Formula
  version '0.15.2'
  desc "Make your build flow incremental"
  homepage "https://github.com/fbecart/zinoma"

  if OS.mac?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.2/zinoma-0.15.2-x86_64-apple-darwin.tar.gz"
    sha256 "73a4c347db6ee6c5f2491bf766ea1e3f8f65ea9f0865632716905d567283bb07"
  elsif OS.linux?
    url "https://github.com/fbecart/zinoma/releases/download/0.15.2/zinoma-0.15.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f153fc8bd5501838a88f6af505fcba21457accf770d0f5b9740f85b5bbc7ddbd"
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
