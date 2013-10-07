require 'spec_helper'


def create_quiz(sometitle)
	Quiz.create(title: sometitle)
end	

describe 'quizzes' do
	it 'should display quizzes' do
		create_quiz('some quiz')
		visit '/quizzes'

		expect(page).to have_content 'some quiz'
	end
end