npm install appium --save-dev --no-audit
npx appium driver install uiautomator2
npx appium --address 127.0.0.1 --port 4723 --base-path /wd/hub  --allow-cors
python3 -m robot -d ./reports ./test/Test.robot