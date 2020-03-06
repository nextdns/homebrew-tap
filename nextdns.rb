# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.4.35"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.4.35/nextdns_1.4.35_darwin_amd64.tar.gz"
    sha256 "a4e5cc2dc19bd6a54be0cfe4b93129d6b2ea4518803680e19fb3445c37bf1517"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.4.35/nextdns_1.4.35_linux_amd64.tar.gz"
      sha256 "b6bdfe5d5577b6abab985de5748c23e0b27d50b500b89671e09b8235f3bd6ff4"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.4.35/nextdns_1.4.35_linux_arm64.tar.gz"
        sha256 "93b58b64a123ad7f35f771e99c311755910914cb1731920d711991251436f964"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.4.35/nextdns_1.4.35_linux_armv6.tar.gz"
        sha256 "2f8df3b718d705d7f1846d3686ce90895ac6a1816b8a028ee4965fb07e512552"
      end
    end
  end

  def install
    bin.install "nextdns"
  end

  def caveats; <<~EOS
    To install NextDNS, run the following command:
    sudo nextdns install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo nextdns activate
  EOS
  end
end
