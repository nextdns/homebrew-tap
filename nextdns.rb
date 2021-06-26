# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.33.8"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.8/nextdns_1.33.8_darwin_amd64.tar.gz"
      sha256 "a563e4cf39454a16702c51753641ca7859d6d369a68e8e1e701317f3141aed2c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.8/nextdns_1.33.8_darwin_arm64.tar.gz"
      sha256 "830cbc333510b33f9111e6134a519d6d582b595af174ce4d609ccec9c5b36dbf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.8/nextdns_1.33.8_linux_amd64.tar.gz"
      sha256 "38d8411ab3c6eff14c30b1ce0b0f1195e5726ea5cfd55e1d46890f52de145fb9"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.8/nextdns_1.33.8_linux_armv6.tar.gz"
      sha256 "5d2b309d5b86254a1cd56ad8888325a95f567d5cfad99a9e665cca752022cca0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.33.8/nextdns_1.33.8_linux_arm64.tar.gz"
      sha256 "45e6cac4384d0fa8313481d193b549b806e90649847e5cd6665cbfd188ca81c7"
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
