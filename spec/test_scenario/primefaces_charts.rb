require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test primefaces charts' do
    visit 'https://www.primefaces.org/showcase/'

    find(ta(   'primefaces:charts')).click

    sleep 3
  end

end
