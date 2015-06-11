require 'faker'

10.times do

  new_question = Question.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph
  )

  5.times do
    new_answer = Answer.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph,
      question_id: new_question.id
    )
  end

end
