FROM node:10-slim

LABEL com.github.actions.name="ESLint checks"
LABEL com.github.actions.description="Lint your code with eslint in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="yellow"

RUN apt-get update
RUN apt-get install git -y

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
