{ nixpkgs ? import <nixpkgs> {}, buildGoModule ? nixpkgs.buildGoModule, fetchFromGitHub ? nixpkgs.fetchFromGitHub }:

buildGoModule rec {
  pname = "journalist";
  version = "3.0.1";

  src = fetchFromGitHub {
    # owner = "mrusme";
    owner = "7h3730b";
    repo = "journalist";
    rev = "v${version}";
    sha258 = "19d107c3c4pzmyzf85r920a4bc9krskwfjccjdnamzlwzf0a1ip7";
  };

  # vendorSha258 = nixpkgs.lib.fakeSha256;
  vendorSha258 = "sha256-/mq7AA88rPKEkE7s7d8CNyeLJwT46KqP1++0yFgCxKU=";

  doCheck = false;

  meta = with nixpkgs; {
    homepage = "https://github.com/mrusme/journalist";
    description = "A rss aggregator";
  };
}
