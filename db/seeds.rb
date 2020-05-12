topics = [{
    # Topic id 1
    title: "HTML"
}, {
    # Topic id 2
    title: "CSS"
}, {
    # Topic id 3
    title: "Javascript"
}]
# Creates Topic for seed file
topics.each do |v|
    Topic.create v
end

codemodules = [{
    # Code module id 1
    lesson: 'Intro to HTML Elements & Structure',
    completed: false,
    topic_id: 1
},{
    # Code module id 2
    lesson: 'Tables',
    completed: false,
    topic_id: 1
},{
    # Code module id 3
    lesson: 'Intro to Javascript',
    completed: false,
    topic_id: 3
}]
codemodules.each do |v|
    CodeModule.create v
end

lessons = [{
    # Lesson id 1
    title: 'History of HTML',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
},{
    # Lesson id 2
    title: 'What is a tag?',
    content: "HTML tags are the hidden keywords within a web page that define how your web browser must format and display the content. HTML tags typically fall into the following format: image below 
    
    There are hundreds of tags in HTML! You can look to MDN (Mozilla Developer Network) ar W3 Schools to see all of the tags available. Don't feel obligated by any means to memorize these. There are a few that you will use often (div, h1, p, etc.) and some that you will likely never use! At this point, just get familiar with the anatomy of a typical HTML tag.",
    completed: false,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/391be322ebc71fef013423d9b4ff55812e79f2ba/68747470733a2f2f692e6962622e636f2f363878664679422f53637265656e2d53686f742d323032302d30342d30362d61742d31302d35342d30392d414d2e706e67"
},{
    # Lesson id 3
    title: 'HTML Boiler Plate',
    content: "In your text editor (Atom of VS Code), if you type HTML and hit tab, the text editor will generate an HTML boiler plate. Let's break down what it is you're looking at in the boiler plate: image below 
    
    It is important to understand what each tag in the boiler plate is responsible for! But for now, we will be working inside of the body tag.",
    completed: false,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/6c03627339b71f371fadd857e3858af7759fca24/68747470733a2f2f692e6962622e636f2f486759685733682f53637265656e2d53686f742d323032302d30342d30362d61742d31312d34362d32392d414d2e706e67"
},{
    # Lesson id 4
    title: 'What is an HTML attribute?',
    content: "HTML attributes are special words used inside the opening tag to control the element's behaviour. HTML attributes are a modifier of an HTML element type. For example, an <a> tag defines a hyperlink on your page. Techniaclly, the <a> tag is a complete tag on it's own. However, we need to add an href attribute to tell the hyperlink where we want to go once it's clicked. An entire <a> tag will look something like this:

    <a href='www.google.com'>Click this link to go to Google!</a>
    Above, we see the <a> tag, the href attribute inside of the opening tag, a URL defined inside of the href attribute, some text for the user to click on, and a closing </a> tag! Voila!
    
    Let's look at another example. An <img> tag will render an image. But the tag alone cannot do the job, we need to add an attribute! Here, we will add a src attribute which will include the URL of the image we want to render.
    
    <img src='www.image_source_goes_here.com'>
    Notice how the <img> tag doesn't close? That's because it's a self-closing tag! Since there is no inner HTML in an image, this tag doesn't required a closing tag. To take a deeper dive on inner HTML, make sure you join Jumpstart!
    
    One more example. A <p> tag represents a paragraph. You can change how the text in your paragraph looks by using a style attribute! The code below will change the font color to blue.
    
    <p style='color:blue'>I'm blue da ba dee da ba daa</p>
    To recap, in all of our examples, the attribute is modifying the HTML element in some way.",
    completed: false,
    code_module_id: 1
},{
    # Lesson id 5
    title: "Let's use a <table> tag to build the table below!",
    content: "1. First, we will need to code opening and closing <table> tags.",
    completed: false,
    code_module_id: 2,
    img_src: "https://camo.githubusercontent.com/7e2f94fe63c11541611feaca0ad881ac2bf6aecc/68747470733a2f2f692e6962622e636f2f3934366b6431482f53637265656e2d53686f742d323032302d30342d30382d61742d31302d32352d31372d414d2e706e67" 
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
    # IDE Question id 1
    title: "Render your first h1!",
    multiple_choice: true,
    content:'Answer 1*/Answer 2*/Answer 3*/Answer 4',
    answer:'Answer 2',
    completed: false,
    lesson_id: 1,
    code_module_id: 1
},{
    # Question id 2
    title: "Where is the opening tag?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C',
    answer:'Answer A',
    completed: false,
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 3
    title: "Where is the closing tag?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C',
    answer:'Answer C',
    completed: false,
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 4
    title: "Where do you see camelCase?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer A and C',
    answer:'Answer A and C',
    completed: false,
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 5
    title: "Which section will be displayed as a string on your web page?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C',
    answer:'Answer B',
    completed: false,
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 6
    title: "Where do you put the content the user will see on the page?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer D',
    completed: false,
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # Question id 7
    title: "What tag houses all of the HTML code you will write?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer A',
    completed: false,
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # Question id 8
    title: "Which tag holds the information that will be displayed in the tab of the browser?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer C',
    completed: false,
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # Question id 9
    title: "Where does all of the metadata (such as fonts, links to stylesheets, etc.) live?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer B',
    completed: false,
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # IDE Question id 10
    title: "Practice with attributes",
    multiple_choice: true,
    content:'Create your first link! Write code that will link a user to the wikipedia site for Cholula hot sauce*/Answer 2',
    answer:'Answer 2',
    completed: false,
    lesson_id: 4,
    code_module_id: 1
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

