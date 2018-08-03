require 'rails_helper'
 
RSpec.describe "Jobs Index", :type => :system, js: true do
	before do 
		Searchkick.disable_callbacks
		5.times { create(:job) }
	end
  
	context "search by job title" do
		before { Job.reindex }
    it "show all jobs" do
			visit '/jobs'

			expect(page).to have_css(".search-form")
			expect(page).to have_css(".card-jobs")
		end
		
		it "search a job" do
			visit '/jobs'
			within(".search-form") do
			  fill_in 'search', with: Job.first.title
			end
			click_button 'Buscar'
			
			current_path.should == "/jobs"
			expect(page).to have_css(".card-jobs")
			expect(page).to have_content(Job.first.title)
		end
		
		it "job link" do
			visit '/jobs'

			within(first(".card-jobs")) do
				expect(page).to have_link("Visualizar", href: "/jobs/#{Job.first.id}")
			end
		end
	end
end