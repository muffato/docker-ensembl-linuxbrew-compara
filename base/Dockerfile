# Docker image with all necessary Homebrew and Ensembl taps, and the basic dependencies
FROM muffato/ensembl-basic-dependencies-linuxbrew

# Close the Ensembl repos
RUN mkdir -p /repo \
    && git clone --depth 1 https://github.com/Ensembl/ensembl.git /repo/ensembl \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-compara.git /repo/ensembl-compara \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-variation.git /repo/ensembl-variation \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-funcgen.git /repo/ensembl-funcgen \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-io.git /repo/ensembl-io \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-vep.git /repo/ensembl-vep \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-rest.git /repo/ensembl-rest \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-test.git /repo/ensembl-test \
    && git clone --depth 1 https://github.com/Ensembl/ensembl-hive.git /repo/ensembl-hive \
    && git clone --branch v1.6.x --depth 1 https://github.com/bioperl/bioperl-live /repo/bioperl-live \
    && git clone --branch release-1-6-9 --depth 1 https://github.com/bioperl/bioperl-run /repo/bioperl-run

# Install their requirements (CPAN)
RUN /repo/ensembl-hive/docker/setup_os.Ubuntu-16.04.sh
    && /repo/ensembl-hive/docker/setup_cpan.Ubuntu-16.04.sh /repo/ensembl*

# Setup the environment
ENV PERL5LIB "/repo/ensembl/modules:/repo/ensembl-compara/modules:/repo/ensembl-variation/modules:/repo/ensembl-funcgen/modules:/repo/ensembl-io/modules:/repo/ensembl-vep/modules:/repo/ensembl-test/modules:/repo/ensembl-hive/modules:/repo/bioperl-live:/repo/bioperl-run/lib:$PERL5LIB"
ENV PATH "/repo/ensembl-hive/scripts:$PATH"

