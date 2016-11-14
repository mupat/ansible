FROM alpine:3.4

MAINTAINER Mupat <dev@mupat.net>

RUN apk update && \
    apk add --no-cache ansible && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# RUN apk update && apk upgrade && apk add \
#   gcc
#
# RUN pip install --upgrade pip
# RUN pip install ansible

# ENV WORKDIR=/app
# ENV PORT=3000
# ENV LANG=C.UTF-8
# ENV LC_ALL=C.UTF-8

# WORKDIR $WORKDIR
# COPY Gemfile* ./
# RUN gem install bundler && bundle install --jobs 20 --retry 5
# COPY . ./

#RUN bundle exec rake assets:precompile

# ENTRYPOINT ["bundle", "exec"]
#
CMD ["ansible", "--version"]
#
# EXPOSE $PORT
