npm install appium --save-dev --no-audit
npx appium driver install uiautomator2
echo "Starting Appium ..."
npx appium --address 127.0.0.1 --port 4723 --base-path /wd/hub  --allow-cors --command-timeout 150000&>/dev/null &
sleep 10
