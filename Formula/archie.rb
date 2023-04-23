class Archie < Formula 
    desc "Create folder structures based on templates"
    homepage "https://github.com/Essay97/archie"
    url "https://github.com/Essay97/archie/archive/refs/tags/1.0.0.tar.gz"
    sha256 "8b01d57d09d8b51de8648aa63585e5f2a21fec0f05a42b4aa3bfec0aa6260c7b"
    license "MIT"
    version "1.0.0"
    depends_on "rust" => :build

    def install
        system "cargo", "build", "--release", "--bin", "archie"
        bin.install "target/release/rustscan"
    end
end