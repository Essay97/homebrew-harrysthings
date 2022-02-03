require "formula"

class AdventureEngine < Formula
    homepage "https://github.com/Essay97/tadvkt"
    desc "A CLI tool to create and play your own text adventure"
    url "https://github.com/Essay97/tadvkt/releases/download/v1.0.2/adventure-engine-1.0.2.tar.gz"
    sha256 ""
    version "1.0.2"
   
    def install
        inreplace "brew/adventure", "<PREFIX>", "#{prefix}"
        prefix.install "adventure-engine-1.0.2-standalone.jar"
        bin.install "brew/adventure"
    end
end
