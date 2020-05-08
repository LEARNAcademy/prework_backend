topics = [{
    title: "HTML"
}, {
    title: "CSS"
}, {
    title: "Javascript"
}]
# Creates Topic for seed file
topics.each do |v|
    Topic.create v
end

codemodules = [{
    lesson: 'Intro to HTML Elements & Structure',
    completed: false,
    topic_id: 1
},{
    lesson: 'Intro to CSS',
    completed: false,
    topic_id: 2
},{
    lesson: 'Intro to Javascript',
    completed: false,
    topic_id: 3
}]
codemodules.each do |v|
    CodeModule.create v
end

lessons = [{
    title: 'History of HTML',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
},{
    title: 'History of HTML 2',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
},{
    title: 'History of HTML 3',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
},{
    title: 'History of CSS',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 2
},{
    title: 'History of CSS 2',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 2
},{
    title: 'History of CSS 3',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 2
},{
    title: 'History of Javascript',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 3
},{
    title: 'History of Javascript 2',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 3
},{
    title: 'History of Javascript 3',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 3
}]
lessons.each do |v|
    Lesson.create v
end

questions = [{
    title: "Question belongs to Lesson id 1",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 1,
    code_module_id: 1
},{
    title: "Question belongs to lesson id 2",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 2,
    code_module_id: 1
},{
    title: "Question belongs to lesson id 3",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 3,
    code_module_id: 1
},{
    title: "Question belongs to lesson id 4",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 4,
    code_module_id: 2
},{
    title: "Question belongs to lesson id 5",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 5,
    code_module_id: 2
},{
    title: "Question belongs to lesson id 6",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 6,
    code_module_id: 2
},{
    title: "Question belongs to lesson id 7",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 7,
    code_module_id: 2
},{
    title: "Question belongs to lesson id 8",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 8,
    code_module_id: 2
},{
    title: "Question belongs to lesson id 9",
    multiple_choice: true,
    content:'answer 1ans:&*answer 2ans:&*answer 3ans:&*answer 4',
    answer:'answer 2',
    completed: false,
    lesson_id: 9,
    code_module_id: 2
}]
questions.each do |v|
    Question.create v
end

resources = [{
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 1
},{
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 2
},{
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 3
},{
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 4
},{
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 5
}]
resources.each do |v|
    Resource.create v
end

