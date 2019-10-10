FROM alpine:latest

LABEL "com.github.actions.name"="Deploy to GitHub Pages"
LABEL "com.github.actions.description"="Builds and deploys the project to GitHub Pages"
LABEL "com.github.actions.icon"="home"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/guillaumejparis/gh-actions-deploy-gh-pages"
LABEL "homepage"="https://github.com/guillaumejparis/gh-actions-deploy-gh-pages"
LABEL "maintainer"="Guillaume Paris <guillaumejparis@gmail.com>"

LABEL "Name"="Deploy to GitHub Pages"
LABEL "Version"="1.0.0"

RUN apk add --no-cache \
        git \
        yarn \
        openssh-client

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
