if ENV['CI'] = 'true'
  CHROMEDRIVER="./features/support/driver/chromedriver_mac/chromedriver"
else
  CHROMEDRIVER="./features/support/driver/chromedriver_linux/chromedriver"
end