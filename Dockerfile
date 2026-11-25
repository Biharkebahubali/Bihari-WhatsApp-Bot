FROM quay.io/lyfe00011/md:beta
COPY . /root/LyFE/
WORKDIR /root/LyFE/
RUN yarn install
CMD ["npm", "start"]