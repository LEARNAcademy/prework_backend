# Parent classes
topics = [{
    # Topic id 1
    title: 'Html'
},
{
    # Topic id 2
    title: 'JavaScript'
},
{
    # Topic id 3
    title: 'CSS'
}]
# Creates Topic for seed file
topics.each do |v|
    Topic.create v
end


# START OF HTML
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Code Modules but in this case Lessons
codeModules = [{
    # Code Module id 1
    lesson: 'Intro to HTML Elements & Structure',
    completed: false,
    topic_id: 1
},
{
     # Code Module id 2
    lesson: 'Tables',
    completed: false,
    topic_id: 1
},
{
     # Code Module id 3
    lesson: 'Types Of Lists',
    completed: false,
    topic_id: 1
}]
# Creates CodeModules for seed file
codeModules.each do |v|
    CodeModule.create v
end
# Code Module 1 starts here ~~~~~~~~~~~~~~~~~~~~~
lessons = [{
    # Lesson id 1
    title: 'History of HTML',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    completed: false,
    code_module_id: 1
},
{
    # Lesson id 2
    title: 'What is a tag?',
    content: "HTML tags are the hidden keywords within a web page that define how your web browser must format and display the content. HTML tags typically fall into the following format:

    There are hundreds of tags in HTML! You can look to MDN (Mozilla Developer Network) ar W3 Schools to see all of the tags available. Don't feel obligated by any means to memorize these. There are a few that you will use often (div, h1, p, etc.) and some that you will likely never use! At this point, just get familiar with the anatomy of a typical HTML tag.",
    completed: false,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/391be322ebc71fef013423d9b4ff55812e79f2ba/68747470733a2f2f692e6962622e636f2f363878664679422f53637265656e2d53686f742d323032302d30342d30362d61742d31302d35342d30392d414d2e706e67",
    
},
{
    # Lesson id 3
    title: 'HTML Boiler Plate',
    content: "In your text editor (Atom or VS Code), if you type HTML and hit tab, the text editor will generate an HTML boiler plate. Let's break down what it is you're looking at in the boiler plate:
    
    It is important to understand what each tag in the boiler plate is responsible for! But for now, we will be working inside of the body tag.",
    completed: false,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/6c03627339b71f371fadd857e3858af7759fca24/68747470733a2f2f692e6962622e636f2f486759685733682f53637265656e2d53686f742d323032302d30342d30362d61742d31312d34362d32392d414d2e706e67"
},
{
    # Lesson id 4
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
    #  Code Module 1 ends here~~~~~~~~~
},
    # Code Module 2 starts here~~~~~~~~
{
    # Lesson id 5
    title: 'Intro To Tables',
    content: "Let's use a <table> tag to build the table below!",
    completed: false,
    code_module_id: 2,
    img_src: "https://camo.githubusercontent.com/7e2f94fe63c11541611feaca0ad881ac2bf6aecc/68747470733a2f2f692e6962622e636f2f3934366b6431482f53637265656e2d53686f742d323032302d30342d30382d61742d31302d32352d31372d414d2e706e67"

},
{
    # Lesson id 6
    title: 'The Table Tag',
    content: "First, we will need to code opening and closing <table> tags.
    
        <table>
        </table>",
    completed: false,
    code_module_id: 2
},
{
    # Lesson id 7
    title: 'Table Rows',
    content: "Next we will need to tell the table how many rows we would like. We do this by nesting <tr> (table row) tags inside of the <table> tags. The table we hope to make will have three rows.

        <table>
          <tr></tr>
          <tr></tr> 
          <tr></tr>
        </table>",
    completed: false,
    code_module_id: 2
},
{
    # Lesson id 8
    title: 'Adding Cells',
    content: "Now we need to tell the table how many columns we will need. We do this my nesting <td> (table data) tags inside of the <tr> tags. Each <td> tag represents a cell in the row. We know we want the table to be three cells wide. First things first though, we need to stay organized since our table is getting more complicated! We are going to drop all of the closing </tr> tags down to a new line before adding in our <td>'s. This will make it very clear to us where exactly each row ends.
        
        <table>
          <tr>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
          </tr> 
          <tr>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>

    Look how clean that is! Each nested section is indented a single tab over and we can clearly see where all of our elements begin and end!",
    completed: false,
    code_module_id: 2

},
{
    # Lesson id 9
    title: 'Adding Data',
    content: "We probably want our table to contain some data right? Let's drop some text inside of the cells in the table.

        <table>
        <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
        </tr>
        <tr>
            <td>4</td>
            <td>5</td>
            <td>6</td>
        </tr> 
        <tr>
            <td>7</td>
            <td>8</td>
            <td>9</td>
        </tr>
        </table>

    Lastly, we will want to add a border so that we can outline the table and all of it's cells. We do this by adding an attribute to the opening <table> tag.

        <table border=1>
        <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
        </tr>
        <tr>
            <td>4</td>
            <td>5</td>
            <td>6</td>
        </tr> 
        <tr>
            <td>7</td>
            <td>8</td>
            <td>9</td>
        </tr>
        </table>",
        completed: false,
        code_module_id: 2
},
{
    # Lesson id 10
    title: 'Practice Time With Tables!',
    content: "Great work! Practice coding out the HTML table below:",
    completed: false,
    code_module_id: 2,
    img_src: "https://camo.githubusercontent.com/408a38b72849652bae524ac29f7d743d016bae24/68747470733a2f2f692e6962622e636f2f746d306b644a642f53637265656e2d53686f742d323032302d30342d30382d61742d31302d34342d33312d414d2e706e67"
    # Code Module 2 ends here ~~~~~~~~~~~~~~~~~~~~~~~
},
    # Code Module 3 starts here ~~~~~~~~~~~~~~~~~~~~~
{
    # Lesson id 11
    title: 'Ordered Lists',
    content: "Let's talk about listing items! In HTML, there are two ways to write a list.

    There can be ordered (numbered) lists:",
    img_src: "https://camo.githubusercontent.com/3e2b6d58ec0f617feda92721d3d35f186aecbac6/68747470733a2f2f692e6962622e636f2f537448667250322f53637265656e2d53686f742d323032302d30342d30392d61742d31302d33302d34362d414d2e706e67",
    completed: false,
    code_module_id: 3
},
{
    # Lesson id 12
    title: 'Unordered List',
    content: "Or unordered (bullet-point) lists:",
    img_src: "https://camo.githubusercontent.com/e98556a8606b91962c7fe139d22daee7a21c518c/68747470733a2f2f692e6962622e636f2f466d47464d39352f53637265656e2d53686f742d323032302d30342d30392d61742d31302d33302d35382d414d2e706e67",
    completed: false,
    code_module_id: 3
},
{
    # Lesson id 13
    title: 'Adding List Items (Table Data)',
    content: "Let's walk through the process. Say we want to create a seating list for a party at our restaurant. We have 2 tables, and we want to have 3 people at every table.

    First, we know we want an ordered list for all of the tables. We start an ordered list with the <ol> tag:

        <ol>
        </ol>

    Now we need to add the tables to our list. We create list items with the <li> tag.

        <ol>
            <li></li>
            <li></li>
        </ol>

    At this point, our table has no data. We will want to add our table names:
        
        <ol>
            <li>Patio</li>
            <li>Dining Room</li>
        </ol>

    Our list is starting to take shape!",
    img_src: "https://camo.githubusercontent.com/f50bc64e157588e4568b750de97cf1f598127b7a/68747470733a2f2f692e6962622e636f2f67746d5a3162322f53637265656e2d53686f742d323032302d30342d30392d61742d31302d34332d35382d414d2e706e67",
    completed: false,
    code_module_id: 3
},
{
    # Lesson id 14
    title: 'Nesting Unordered List',
    content: "Now it's time to assign guests to tables. We can do that by nesting a unordered lists inside of out ordered lists. We will start by dropping the closing </li> tags down to the next line to make room for our nested list. Like in the Tables Module, we want our code to be very organized and clean.

        <ol>
          <li>Patio
          </li>
          <li>Dining Room
          </li>
        </ol>

    Between our opening and closing <li> tags, we are going to start new unordered lists. We already know that each table will have three guests. We can go ahead and add three <li>'s (list items) inside of each <ul> (unordered list):

        <ol>
          <li>Patio
            <ul>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </li>
          <li>Dining Room
            <ul>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </li>
        </ol>

    Looking good!",
    img_src: "https://camo.githubusercontent.com/56953c64e651591f50f0fb446598ef6f254f0a9f/68747470733a2f2f692e6962622e636f2f307456717934582f53637265656e2d53686f742d323032302d30342d30392d61742d31302d35312d31362d414d2e706e67",
    completed: false,
    code_module_id: 3
},
{
    # Lesson id 15
    title: 'Adding List Items Part 2',
    content: "Finally, we can add the guests' names to each <li> within the <ul>'s:

        <ol>
            <li>Patio
                <ul>
                    <li>Jose</li>
                    <li>Gina</li>
                    <li>Blanca</li>
                </ul>
            </li>
            <li>Dining Room
                <ul>
                    <li>Heather</li>
                    <li>Sean</li>
                    <li>Macy</li>
                </ul>
            </li>
        </ol>

    Woo! That's a good lookin' list!",
    img_src: "https://camo.githubusercontent.com/3be7a620cab2e641428b54d2855b55794d64ae09/68747470733a2f2f692e6962622e636f2f376a76304672792f53637265656e2d53686f742d323032302d30342d30392d61742d31302d35332d32312d414d2e706e67",
    completed: false,
    code_module_id: 3
},
{
    # Lesson id 16
    title: 'Practice Time With Tables Part 2!',
    content: "Now you try!",
    completed: false,
    code_module_id: 3
}]
    # Code module 3 ends here~~~~~~~~~~~~~~~~~~~~~~~~~~
# Creates Lessons for seed file
lessons.each do |v|
    Lesson.create v
end

questions = [{
    # Question id 1
     multiple_choice: false,
     completed: false,
     lesson_id: 10,
     code_module_id: 2
},
{
    # Question id 2
    multiple_choice: false,
    completed: false,
    lesson_id: 16,
    code_module_id: 3
},
{
    # Question id 3 (Render your first h1!)
    multiple_choice: false,
    title: "Render Your First h1!",
    content: "HTML: <h1> Hello world! </h1>",
    completed: false,
    lesson_id: 1,
    code_module_id: 1
},
{
    # Question id 4 (Quiz: The anatomy of a tag)
    multiple_choice: true,
    title: 'Where is the opening tag?',
    content: "'A', 'B', 'C'",
    answer: 'A',
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67",
    completed: false,
    lesson_id: 2,
    code_module_id: 1

}]
# Creates Questions for seed file
questions.each do |v|
    Question.create v
end

resources = [{
    # Resource id 1
    name: 'MDN HTML Tags',
    link: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element",
    question_id: 4
    }]
    
# Creates Resources for seed file
resources.each do |v|
    Resource.create v
end