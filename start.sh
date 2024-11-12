# start.sh
#!/bin/bash

# Start backend
cd /usr/src/app/dexBack
node index.js &

# Start frontend
cd /usr/src/app/dex
npm start

