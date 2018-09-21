FROM elasticsearch:latest

# x-pack
RUN elasticsearch-plugin  install --batch x-pack

# kuromoji （日本語用だけど、念のため）
RUN elasticsearch-plugin  install analysis-kuromoji
