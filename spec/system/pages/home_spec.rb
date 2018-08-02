require 'rails_helper'
 
RSpec.describe "Home view", :type => :system, js: true do
	before do 
		Searchkick.disable_callbacks
		3.times { create(:tag)}
		5.times { create(:job, tag: Tag.all.sample) }
	end
  
	context "search by job title" do
		before { Job.reindex }
    it "search jobs" do
			visit '/'
			within(".search-form") do
			fill_in 'search', with: Job.first.title
			end
			click_button 'Buscar'
	
			current_path.should == "/jobs"
			expect(page).to have_css(".card-jobs")
    end
	end
	
	# context "search by tag name" do
	# 	before { Tag.reindex }
	# 	# puts Tag.first.name
  #   it "search jobs" do
	# 		visit '/'
	# 		within(".search-form") do
	# 		fill_in 'search', with: Tag.first.name
	# 		end
	# 		click_button 'Buscar'
	
	# 		current_path.should == "/jobs"
	# 		expect(page).to have_css(".card-jobs")
  #   end
  # end
end