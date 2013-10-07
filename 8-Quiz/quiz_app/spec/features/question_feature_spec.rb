require 'spec_helper'

def create_question(questiontitle)
	Question.create(question: questiontitle)
end	

describe 'questions' do
	it 'should display a question' do
		create_question('some question')
		visit '/questions'

		expect(page).to have_content 'some questions'
	end
end