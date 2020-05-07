topics = [{
    title: "HTML"
}, {
    title: "CSS"
}]
# Creates Topic for seed file
topics.each do |v|
    Topic.create v
end

codemodules = [{
    lesson: 'Intro to HTML Elements & Structure',
    completed: false,
    topic_id: 1
}]
codemodules.each do |v|
    CodeModule.create v
end

lessons = [{
    title: 'History of HTML',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
}]
lessons.each do |v|
    Lesson.create v
end

questions = [{
    title: "What is the answer to this?",
    multiple_choice: true,
    content:'answer 1 ans:&* answer 2 ans:&* answer 3 ans:&* answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 1,
    code_module_id: 1
}]
questions.each do |v|
    Question.create v
end

resources = [{
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 1
}]
resources.each do |v|
    Resource.create v
end

