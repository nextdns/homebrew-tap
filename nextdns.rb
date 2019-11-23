# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.1.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.1.8/nextdns_1.1.8_darwin_amd64.tar.gz"
    sha256 "509dd7d3c50550fff86a17ba69e9ed1aff1503679fa2d909d0357065a46d4465"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.1.8/nextdns_1.1.8_linux_amd64.tar.gz"
      sha256 "2f3362f1728300aa0c6625b176eba0426549dd4ccb2e71701febedc7debd4f1b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.1.8/nextdns_1.1.8_linux_arm64.tar.gz"
        sha256 "d5fb2d8339cb4feb7685a4ac63823edd613f388cf1477ad3893ccdc8dc91848f"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.1.8/nextdns_1.1.8_linux_armv6.tar.gz"
        sha256 "686c047b62002163e5b60c830913896b6d064a8d63e2114a077b2a1739d0e1e9"
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
    nextdns activate
  EOS
  end
end
