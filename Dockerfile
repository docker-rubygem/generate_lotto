FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.1

RUN gem install generate_lotto --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["generate_lotto"]
CMD ["--help"]
