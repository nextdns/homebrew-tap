# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.33.11"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_darwin_amd64.tar.gz"
      sha256 "f6e1159088e6aa40297bf2f3268930b5211b9d9e6dc233771e830f5ec762eed8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_darwin_arm64.tar.gz"
      sha256 "36b51a9aedbfe09f5cfee9a3835573a799c96307fe7974eff60c781f1b06af7f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_linux_amd64.tar.gz"
      sha256 "930b1bd3120b7c9d3473b72f86c5e5c782290af9fe3fb2525bb6667054d6f157"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_linux_armv6.tar.gz"
      sha256 "fe48ac3d054564e40a40aa592962140467a63f59788e5c901d5fc8780867ced1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_linux_arm64.tar.gz"
      sha256 "f4f53d9b92a3f9f7c3757f8b49d1515880cebe516d59783ded7a2fde2b6fa0a2"
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
