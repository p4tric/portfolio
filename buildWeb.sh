#! /bin/sh
yarn clean
yarn build

#f.u user
#sed -i '' -e 's|<base href="/">|<base href="/admin/">|g' dist/index.html
scp -r public/ p4tric@bangjeep-enterprise.com:/tmp
ssh -p 22 p4tric@bangjeep-enterprise.com 'cd /usr/share/nginx/p4tric.ph && ./order66.sh'
