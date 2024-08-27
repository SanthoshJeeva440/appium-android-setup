npm install appium --save-dev --no-audit
npx appium driver install uiautomator2
echo "Starting Appium ..."
npx appium --address 127.0.0.1 --port 4723 --base-path /wd/hub  --allow-cors  &>/dev/null &
echo "Starting Appium ..."
python3 -m robot -d ./reports ./test/Test.robot