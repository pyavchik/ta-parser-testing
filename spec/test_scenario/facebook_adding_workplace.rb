require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do

  scenario 'Facebook adding workplase (aboutlink, deletelink)' do
    visit 'https://www.facebook.com'

    # find(:id, 'email').set('eshapovalov298@gmail.com')
    find(ta(   'sign_in:email_field')).set('eshapovalov298@gmail.com')

    # find(:id, 'pass').set('Tester1234')
    find(ta(   'sign_in:pass_field')).set('Tester1234')

    # find(:id, 'loginbutton').click
    find(ta(   'sign_in:login_btn')).click

    # find(:xpath, "//span[text()='Mark']").click
    find(ta(   'home:profile')).click

    #Test About link
    # find(:xpath, "//a[@data-tab-key='about']").click
    # find(:xpath, ta('profile:aboutLink', "//a[@data-tab-key='about']")).click
    find(ta(   'profile:aboutLink')).click

    # find(:xpath, "//span[text()='Add a workplace']").click
    # find(:xpath, ta('profile:about:addWorkBtn', "//span[text()='Add a workplace']")).click
    find(ta(   'profile:about:addWorkBtn')).click
    sleep 3
    # find(:xpath, "//span[text()='Add a workplace']").click
    # find(:xpath, ta('profile:about:addWorkBtn', "//span[text()='Add a workplace']")).click
    find(ta(   'profile:about:addWorkBtn')).click

    # find(:xpath, "//input[@placeholder='Where have you worked?']").set('Softesis')
    # find(:xpath, ta('profile:about:companyFld', "//input[@placeholder='Where have you worked?']")).set('Softesis')
    find(ta(   'profile:about:companyFld')).set('Softesis')

    # find(:xpath, "//li[contains(., 'Santa Clara')]").click
    # find(:xpath, ta('profile:about:companyFromList', "//li[contains(., 'Softesis')]")).click
    find(ta(   'profile:about:companyFromList')).click

    # find(:xpath, "//button[@name='__submit__']").click
    # find(:xpath, ta('profile:about:saveChangesBtn', "//button[@name='__submit__']")).click
    find(ta(   'profile:about:saveChangesBtn')).click

    # find(:xpath, "//a[contains(., 'Softesis')]").hover
    # find(:xpath, ta('profile:about:workInf', "//a[contains(., 'Softesis')]")).hover.hover.hover.hover.hover.hover.hover.hover
    find(ta(   'profile:about:workInf')).hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover.hover

    # find(:xpath, "//span[text()='Options']").click
    # find(:xpath, ta('profile:about:work:optionsBtn', "//span[text()='Options']")).click
    find(ta(   'profile:about:work:optionsBtn')).click

    sleep 10

    # find(:xpath, "//span[text()='Delete']").click
    # find(:xpath, ta('profile:about:work:options:deleteAboutBtn', "//span[text()='Delete']")).click
    path = find(:xpath, "//span[text()='Delete']").path
    puts path.downcase
    find(ta(   'profile:about:work:options:deleteAboutBtn')).click
=begin
    #sleep
    # expect(page).to have_selector(:xpath, "//button[text()='Save']", visible: true)
    expect(page).to have_selector(:xpath, ta('profile:about:work:options:saveBtn', "//button[text()='Save']"), visible: true)
    # expect(page).to have_selector(ta(   'profile:about:work:options:saveBtn'), visible: true)

    # find(:xpath, "//label[contains(., 'Remove Softesis')]").click
    find(:xpath, ta('profile:about:work:options:removeAction', "//label[contains(., 'Remove Softesis')]")).click
    # find(ta(   'profile:about:work:options:removeAction')).click

    # find(:xpath, "//button[text()='Save']").click
    find(:xpath, ta('profile:about:work:options:saveBtn', "//button[text()='Save']")).click
    # find(ta(   'profile:about:work:options:saveBtn')).click
=end
    sleep 3
  end
end
