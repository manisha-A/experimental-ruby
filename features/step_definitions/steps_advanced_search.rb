require 'rubygems'
require 'rspec'

Given("open google advanced search") do
  @driver.navigate.to "https://www.google.com/advanced_search?hl=en"         # direct to site
end

Then("input title, language, and time") do
  @driver.find_element(:id, 'xX4UFf').send_keys 'Elon Musk'                # type elon musk in inpur form
  @driver.find_element(:id,'lr_button').click                              # click dropdown language
  @driver.find_element(:css,'.goog-menuitem[value="lang_id"]').click       # click and choose indonesian language
  @driver.find_element(:id,'as_qdr_button').click                          # click dropdown time
  @driver.find_element(:css,'#as_qdr_menu [value="m"]').click              # click and choose time : past month
  @driver.find_element(:css,'[type="submit"]').click                       # click submit
  sleep(2)                                                                # sleep/pause 2 second
end

Then("validate result advanced search") do
  url_captured = @driver.current_url
  puts url_captured
  expect(url_captured).to include('Elon+Musk')                                        # validate url include "Elon Musk"

  # getTextForm = driver.find_element(:css, '.gLFyf.gsfi').attribute("value")
  # getTextForm = driver.find_element(:css, '.gLFyf').attribute("value")
  # puts getTextForm
  # expect(getTextForm).to eq('Elon Musk')                                        # validate form input contains "Elon Musk"

  # getTextLanguage = driver.find_element(:css, '.EISXeb.KTBKoe').text
  # puts getTextLanguage
  # expect(getTextLanguage).to eq('Search Indonesian pages')                      # validate indonesian language

  # getTextTime = driver.find_element(:css, '[aria-label="Past month"]').text
  # puts getTextTime
  # expect(getTextTime).to eq('Past month')                                       # validate time : past month
end