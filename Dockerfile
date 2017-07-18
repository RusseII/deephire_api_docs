FROM ruby:2.4.1-onbuild
MAINTAINER Adrian Perez <adrian@adrianperez.org>
VOLUME /usr/src/app/source
EXPOSE 4567

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install middleman

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
