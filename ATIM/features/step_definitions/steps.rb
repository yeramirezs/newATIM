Given /^I am on "([^\"]*)"$/ do |page_name|
  visit "/"+page_name
end

Given /^I visit a tesis with "([^\"]*)","([^\"]*)"$/ do |prof, tesis|
  visit "/theses/"+prof+"?id2="+tesis
end


When /^I list "(.*?)" commitments of thesis "([^\"]*)"$/ do |type, thesis|
  visit "/commitments/" << thesis << "?comm_type=" << type
end

Then /^I close commitment "([^"]*)"$/ do |comm_id|
  visit "/commitments/" << comm_id << "/edit"
end


When /^I list sources of thesis "([^\"]*)"$/ do |thesis|
  visit "/sources/" << thesis
end


Then  /^I select source "([^\"]*)" and press "([^\"]*)"$/  do |source, action|
  visit "/sources/" << source << "/edit"
end


When /^execute "([^"]*)"$/ do |action|
  click_button(action)
end

Then /^I fill analysis with "([^"]*)"$/ do |analysis|
  fill_in('analysis', :with => analysis)
end

When /^I enter with the username "([^\"]*)"$/ do |username|
  visit root_path
  fill_in('email', :with => username)
  click_button("Login")
end


Then(/^I should see  "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I select thesis "(.*?)" and press "([^\"]*)"$/) do |id, link|
  visit "1?id2="+id
end

Then /^I click "([^\"]*)"$/ do |link|
  click_link link
end

Then /^I press "([^\"]*)"$/ do |link|
  click_link link
end

Then /^I fill the thesis with "([^\"]*)","([^\"]*)"$/ do |title, description|
  fill_in('thesis_title', :with => title)
  fill_in('thesis_description', :with => description)
  click_button("Create Thesis")
end

Then /^press "([^\"]*)"$/ do |text|
  click_button(text)
end


Then /^I should be on (.+)$/ do |page_name|
  current_path.should == "/"+page_name
end

Then /^I cant see the button "([^\"]*)"$/ do |name|
  page.should_not have_button(name)
end
