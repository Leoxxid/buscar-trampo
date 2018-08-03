require 'rails_helper'
 
RSpec.describe "Jobs Show", :type => :system, js: true do
	before { @job = create(:job) }

	it "show job description" do
		visit "/jobs/#{@job.id}"

		expect(page).to have_content(@job.title)
		expect(page).to have_content(@job.description)
		expect(page).to have_selector("a[href='#{@job.job_url}']")
	end
end