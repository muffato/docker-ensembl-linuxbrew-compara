# Docker image with all necessary Homebrew and Ensembl taps, and the basic dependencies
FROM muffato/ensembl-basic-dependencies-linuxbrew

# Close the Ensembl repos
RUN mkdir -p $HOME/repos \
    && git clone --depth 1 https://github.com/Ensembl/ensembl.git $HOME/repos/ensembl \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-compara.git $HOME/repos/ensembl-compara \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-variation.git $HOME/repos/ensembl-variation \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-funcgen.git $HOME/repos/ensembl-funcgen \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-io.git $HOME/repos/ensembl-io \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-vep.git $HOME/repos/ensembl-vep \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-rest.git $HOME/repos/ensembl-rest \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-test.git $HOME/repos/ensembl-test \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-hive.git $HOME/repos/ensembl-hive \
    && git clone --branch v1.6.x --depth 1 https://github.com/bioperl/bioperl-live $HOME/repos/bioperl-live \
    && git clone --branch release-1-6-9 --depth 1 https://github.com/bioperl/bioperl-run $HOME/repos/bioperl-run

# Install their requirements (CPAN)
RUN $HOME/repos/ensembl-hive/docker/setup_os.Ubuntu-16.04.sh \
    && $HOME/repos/ensembl-hive/docker/setup_cpan.Ubuntu-16.04.sh $HOME/repos/ensembl*

# Setup the environment
ENV PERL5LIB "$HOME/repos/ensembl/modules:$HOME/repos/ensembl-compara/modules:$HOME/repos/ensembl-variation/modules:$HOME/repos/ensembl-funcgen/modules:$HOME/repos/ensembl-io/modules:$HOME/repos/ensembl-vep/modules:$HOME/repos/ensembl-test/modules:$HOME/repos/ensembl-hive/modules:$HOME/repos/bioperl-live:$HOME/repos/bioperl-run/lib:$PERL5LIB"
ENV PATH "$HOME/repos/ensembl-hive/scripts:$PATH"

