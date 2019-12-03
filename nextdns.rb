# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.2.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nextdns/nextdns/releases/download/v1.2.5/nextdns_1.2.5_darwin_amd64.tar.gz"
    sha256 "b1c111263e29f1124f7613f6eae2a183b4a60c75da7461c82a98228e58ee4401"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.2.5/nextdns_1.2.5_linux_amd64.tar.gz"
      sha256 "34cf5079765a162aa44fca2220da5462b5561a78e25eb5e47b1c7dfa9b27b474"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nextdns/nextdns/releases/download/v1.2.5/nextdns_1.2.5_linux_arm64.tar.gz"
        sha256 "cc81194c4defb4a0330ee2f3950ae96ce68022ba300bea9846aad7299c4fea92"
      else
        url "https://github.com/nextdns/nextdns/releases/download/v1.2.5/nextdns_1.2.5_linux_armv6.tar.gz"
        sha256 "aff5b4e495527416f8446cfacc4b5730c3706d9333e28e7e87b8704a8820df03"
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
