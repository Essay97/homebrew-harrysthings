require "formula"

class AdventureEngine < Formula
    homepage "https://github.com/Essay97/tadvkt"
    desc "A CLI tool to create and play your own text adventure"
    url "https://github.com/Essay97/tadvkt/releases/download/v1.0.3/adventure-engine-1.0.3.tar.gz"
    sha256 "4615629a3c675485b7356877fa11c07afb95abae3e912346d334d211fa87d024"
    version "1.0.3"
   
    def install
        inreplace "brew/adventure", "<PREFIX>", "#{prefix}"
        prefix.install "adventure-engine-1.0.3-standalone.jar"
        bin.install "brew/adventure"
    end
end
