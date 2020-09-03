Board.create!(name: 'First Kanban') do |b|
  b.tasks.build(title: 'step1', content: 'foo bar buzz')
  b.tasks.build(title: 'step2', content: 'foo bar buzz')
  b.tasks.build(title: 'step3', content: 'foo bar buzz')
  b.tasks.build(title: 'step4', content: 'foo bar buzz')
end

%w[Alan Bob Chan Dan Elle Foobar].each do |name|
  Member.create!(name: name)
end
