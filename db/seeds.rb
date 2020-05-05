topics = [{
    title: 'Html'
},
{
    title: 'JavaScript'
},
{
    title: 'CSS'
}]

topics.each do |v|
    Topic.create v
end

codeModules = [{
    # Code Module 1
    lesson: 'Intro to HTML Elements & Structure',
    completed: false,
    user_id: 1
},
{
     # Code Module 2
    lesson: 'Tables',
    completed: false,
    user_id: 1
},
{
     # Code Module 3
    lesson: 'Lists',
    completed: false,
    user_id: 1
}]

codeModules.each do |v|
    CodeModule.create v
end

lessons = [{
    title: 'History of HTML',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
},
{
    title: 'What is a tag?',
    content: "HTML tags are the hidden keywords within a web page that define how your web browser must format and display the content. HTML tags typically fall into the following format:

    There are hundreds of tags in HTML! You can look to MDN (Mozilla Developer Network) ar W3 Schools to see all of the tags available. Don't feel obligated by any means to memorize these. There are a few that you will use often (div, h1, p, etc.) and some that you will likely never use! At this point, just get familiar with the anatomy of a typical HTML tag.",
    completed: false,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/391be322ebc71fef013423d9b4ff55812e79f2ba/68747470733a2f2f692e6962622e636f2f363878664679422f53637265656e2d53686f742d323032302d30342d30362d61742d31302d35342d30392d414d2e706e67"
},
{
    title: 'HTML Boiler Plate',
    content: "In your text editor (Atom of VS Code), if you type HTML and hit tab, the text editor will generate an HTML boiler plate. Let's break down what it is you're looking at in the boiler plate:
    
    It is important to understand what each tag in the boiler plate is responsible for! But for now, we will be working inside of the body tag.",
    completed: false,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/6c03627339b71f371fadd857e3858af7759fca24/68747470733a2f2f692e6962622e636f2f486759685733682f53637265656e2d53686f742d323032302d30342d30362d61742d31312d34362d32392d414d2e706e67"
},
{
    title: "What is an HTML attribute?",
    content: "HTML attributes are special words used inside the opening tag to control the element's behaviour. HTML attributes are a modifier of an HTML element type. For example, an <a> tag defines a hyperlink on your page. Techniaclly, the <a> tag is a complete tag on it's own. However, we need to add an href attribute to tell the hyperlink where we want to go once it's clicked. An entire <a> tag will look something like this:

    <a href='www.google.com'>Click this link to go to Google!</a>
    
    Above, we see the <a> tag, the href attribute inside of the opening tag, a URL defined inside of the href attribute, some text for the user to click on, and a closing </a> tag! Voila!

    Let's look at another example. An <img> tag will render an image. But the tag alone cannot do the job, we need to add an attribute! Here, we will add a src attribute which will include the URL of the image we want to render.

        <img src='www.image_source_goes_here.com'>
    
    Notice how the <img> tag doesn't close? That's because it's a self-closing tag! Since there is no inner HTML in an image, this tag doesn't required a closing tag. To take a deeper dive on inner HTML, make sure you join Jumpstart!

    One more example. A <p> tag represents a paragraph. You can change how the text in your paragraph looks by using a style attribute! The code below will change the font color to blue.
        
        <p style='color:blue'>I'm blue da ba dee da ba daa</p>

    To recap, in all of our examples, the attribute is modifying the HTML element in some way.
    ",
    completed: false,
    code_module_id: 1
}]

lessons.each do |v|
    Lesson.create v
end
