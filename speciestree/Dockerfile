FROM muffato/ensembl-linuxbrew-compara-base

# Run the install several times in case it is incomplete
RUN brew install ensembl/cask/compara-speciestree \
 || brew install ensembl/cask/compara-speciestree \
 || brew install ensembl/cask/compara-speciestree \
 && rm -rf /home/linuxbrew/.cache/Homebrew/downloads/ /home/linuxbrew/.cache/Homebrew/*.bottle.*

