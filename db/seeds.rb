admin = [{
    email: "admin@learn.com",
    password: "testtest",
    password_confirmation: "testtest",
    admin: true
}]
admin.each do |v|
    User.create v
end

topics = [{
    # Topic id 1
    title: "HTML"
}, {
    # Topic id 2
    title: "JavaScript"
}, {
    # Topic id 3
    title: "CSS"
}]
# Creates Topic for seed file
topics.each do |v|
    Topic.create v
end

codemodules = [{
    # Code module id 1
    lesson: 'Intro to HTML Elements & Structure',
    topic_id: 1
},{
    # Code module id 2
    lesson: 'Tables',
    topic_id: 1
},{
    # Code module id 3
    lesson: 'Lists',
    topic_id: 1
},{
    # Code module id 4
    lesson: 'Intro to JavaScript',
    topic_id: 2
},{
    # Code module id 5
    lesson: 'Variables',
    topic_id: 2
},{
    # Code module id 6
    lesson: 'Conditionals',
    topic_id: 2
},{
    # Code module id 7
    lesson: 'Arrays',
    topic_id: 2
},{
    # Code module id 8
    lesson: 'For Loops',
    topic_id: 2
},{
    # Code module id 9
    lesson: 'Functions',
    topic_id: 2
}]
codemodules.each do |v|
    CodeModule.create v
end

lessons = [{
    # Lesson id 1
    title: 'History of HTML',
    content: "Hyper Text Markup Language: structure and content of a page. Not the styling, not the functionality. Basically the skeleton. In the early days of the internet, there was no standardized way of sending information and documents. Internet was mostly used for communication between colleges and universities as well as the military. If I wanted any formatting to happen with my document, I needed to be able to break that down to smaller pieces. Thus, HTML was made to handle it around 1989/1990. Some headers, some things are bolded or important italicized, some bullet points, bigger and smaller text, etc Eventually moved onto more broad uses. Remember myspace? Probably used HTML/CSS to edit your page. Think of HTML as the skelton of your program!",
    code_module_id: 1
},{
    # Lesson id 2
    title: 'What is a tag?',
    content: "HTML tags are the hidden keywords within a web page that define how your web browser must format and display the content. HTML tags typically fall into the following format: image below 
    
    There are hundreds of tags in HTML! You can look to MDN (Mozilla Developer Network) ar W3 Schools to see all of the tags available. Don't feel obligated by any means to memorize these. There are a few that you will use often (div, h1, p, etc.) and some that you will likely never use! At this point, just get familiar with the anatomy of a typical HTML tag.",
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/391be322ebc71fef013423d9b4ff55812e79f2ba/68747470733a2f2f692e6962622e636f2f363878664679422f53637265656e2d53686f742d323032302d30342d30362d61742d31302d35342d30392d414d2e706e67"
},{
    # Lesson id 3
    title: 'HTML Boiler Plate',
    content: "In your text editor (Atom of VS Code), if you type HTML and hit tab, the text editor will generate an HTML boiler plate. Let's break down what it is you're looking at in the boiler plate: image below 
    
    It is important to understand what each tag in the boiler plate is responsible for! But for now, we will be working inside of the body tag.",
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
    code_module_id: 1
},{
    # Lesson id 5
    title: "Introduction To Tables",
    content: "Let's use a <table> tag to build the table below!",
    code_module_id: 2,
    img_src: "https://camo.githubusercontent.com/7e2f94fe63c11541611feaca0ad881ac2bf6aecc/68747470733a2f2f692e6962622e636f2f3934366b6431482f53637265656e2d53686f742d323032302d30342d30382d61742d31302d32352d31372d414d2e706e67" 
},{
    # Lesson id 6
    title: 'Introduction To Lists',
    content: "Let's talk about listing items! In HTML, there are two ways to write a list.

    There can be ordered (numbered) lists:
        How to do laundry:
            1. Separate laundry by color
            2. Put laundry in machine
            3. Add soap
            4. Adjust setting and hit 'start'

    Or unordered (bullet-point) lists:
        Laundry supplies:
            - Detergent
            - Fabric Softner
            - Dryer sheets",
    code_module_id: 3
},{
    # Lesson id 7
    title: 'What is JS?',
    content: "JavaScript (often shortened to 'JS') is a powerful, flexible, and fast programming language. It was created in 1995 so it's old and well documented. Java and JavaScript are not the same language! JavaScript is most commonly used as a client side scripting language. This means that JavaScript code is written into an HTML page and when a user requests an HTML page with JavaScript in it, the script is sent to the browser (chrome) and it's up to the browser to do something with it. If HTML is the skeleton of a program, think of JavaScript as the muscular system! It gives your user something to interact with!",
    code_module_id: 4
},{
    # Lesson id 8
    title: 'Primitive Data Types',
    content: "A data type is an attribute of data which tells the compiler or interpreter how the programmer intends to use the data. There are six primitive data types in JS:

    Number
    String
    Boolean
    Null
    Undefined
    Symbol

    In this module, we will focus on number, string, and boolean.
    
    Numbers are exactly that! Numbers! JS numbers can be positive, negative, whole numbers, and floats (a number with fractional value such as 2.5).
    We can perform basic math with numbers in JS
    
        Addition: 4 + 100
        
        Subtraction: 40 - 6
        
        Multiplication: 76 * 2
        
        Division: 9 / 3
    
    Strings are anything wrapped in quotation marks! All of the following examples are strings:
    'Salt and Pepper Kettle Chips'
    'True'
    '100'

    Booleans are the value of either true or false.",
    code_module_id: 4
},{
    # Lesson id 9
    title: 'Comparison Operators',
    content: "Coding is going to require a lot of comparisons! We can compare values a couple different ways.

    Equality operator: == or ===
        
        == converts the data values to the same data type before performing comparison through type coercion. This is an Abstrct Equality Comparison
        === does not do any type coercion and returns true only if both values and types are identical. This is a Strict Equality Comparison. For example:
    4 == 4        // true
    7 == 4        // false
    '4' == 4      // true
    '4' === 4     // false
    '4' !== 4     // true

    Hey, what was that ! ?? The ! above is called a bang operator. The bang operator essentially says 'String 4 is not equal to number 4' which is true.",
    code_module_id: 4
},{
    # Lesson id 10
    title: 'Relational Operators',
    content: "You can also compare values with Relational Operators: >, <, >=, <=

        // greater than
        2 > 0         // true
        
        // less than
        4 < 8         // true
        
        // greater than or equal to
        0 >= 2        // false
        
        // less than or equal to
        -4 <= 0.8     // true",
    code_module_id: 4
},{
    # Lesson id 11
    title: 'Logical Operators',
    content: "-And: &&, checks if both values meet a certain criteria
    
    -Or: ||, checks if at least one value meets a certain criteria
    
    -Not: ! (this should be familiar), negates the proceeding statement

        // and
        4 && 7 > 1          // true
        11 && 12 < 6        //false
        
        // or
        true  || false      // true
        false || false      // false
        
        // not
        !true               // false
        !false              // true
        true !== false       // true
        true !== true        // false
        !(true && false)    // true
        !(true && false)    // true",
    code_module_id: 4
},{
    # Lesson id 12
    title: 'Introduction To Variables',
    content: "JavaScript variables are containers for storing data values. They are re-usable and re-assignable in most cases. Think of a variable as a piece of Tupperware...

    My Tupperware is labeled 'Lunch.' Yesterday, I decided to pack myself a sandwich",
    code_module_id: 5,
    img_src: "https://camo.githubusercontent.com/97a6394cf7831ce54a93bf9101dfe79ced55f6eb/68747470733a2f2f692e6962622e636f2f3130645a5347472f53637265656e2d53686f742d323032302d30342d30392d61742d352d33362d35312d504d2e706e67"
},{
    # Lesson id 13
    title: 'Introduction To Variables PT 2',
    content: "When 12 o'clock rolled around and I opened up my Tupperware, a sandwich was inside",
    code_module_id: 5,
    img_src: "https://camo.githubusercontent.com/3f8e76922a390251ae902a28d2fe66f33d461dc9/68747470733a2f2f692e6962622e636f2f785335717258312f53637265656e2d53686f742d323032302d30342d30392d61742d352d33362d35332d504d2e706e67"
},{
    # Lesson id 14
    title: 'Introduction To Variables PT 3',
    content: "Every time I opened up my lunch container throughout the day, I saw a sandwich. It did not change.

    But today I decided I would like tacos for lunch instead of a sandwich. I used my same container labeled 'Lunch' and replaced its contents with tacos",
    code_module_id: 5,
    img_src: "https://camo.githubusercontent.com/759bd66d1409f3756aef64eccc7c8717a6eba8e1/68747470733a2f2f692e6962622e636f2f3644514d4a78422f53637265656e2d53686f742d323032302d30342d30392d61742d352d33362d35392d504d2e706e67"
},{
    # Lesson id 15
    title: 'Introduction To Variables PT 4',
    content: "Once again, it's lunchtime. I opened my lunch container to find tacos. There was no need for me to create more dishes and start a new lunch container. I reused the orignial one! I successfully re-assigned my variable!",
    code_module_id: 5,
    img_src: "https://camo.githubusercontent.com/66b28fbcf96cad8b6e8793e337523e69d141a8ea/68747470733a2f2f692e6962622e636f2f5732774e766d712f53637265656e2d53686f742d323032302d30342d30392d61742d352d33372d30302d504d2e706e67"
},{
    # Lesson id 15
    title: 'Introduction To Variables PT 5',
    content: "Let's look at what this looks like in code:

        var lunch = 'sandwich'    // assign a variable using the (keyword 'var') + (the name of your variable) + (a single =) + (data)
        
        lunch                     // 'sandwich'
        lunch                     // 'sandwich'
        lunch                     // 'sandwich'
        
        lunch = 'taco'            // reassign variable data with (the name of your variable) + (a single =) + (data)
        
        lunch                     // 'taco'

    So far we have covered == and === for comparing data. But a single = assigns value. Also, variable names are lowercase!",
    code_module_id: 5
},{
    # Lesson id 16
    title: 'Introduction To Conditionals',
    content: "",
    code_module_id: 6
}]
lessons.each do |v|
    Lesson.create v
end

questions = [{
    # IDE Question id 1
    title: "Render your first h1!",
    multiple_choice: false,
    content:'Answer 1*/Answer 2*/Answer 3*/Answer 4',
    answer:'<h1></h1>',
    lesson_id: 1,
    code_module_id: 1
},{
    # Question id 2
    title: "Where is the opening tag?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C',
    answer:'Answer A',
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 3
    title: "Where is the closing tag?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C',
    answer:'Answer C',
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 4
    title: "Where do you see camelCase?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer A and C',
    answer:'Answer A and C',
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 5
    title: "Which section will be displayed as a string on your web page?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C',
    answer:'Answer B',
    lesson_id: 2,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3c835e90505422e327d1b6f8b69611da2adcb343/68747470733a2f2f692e6962622e636f2f477642624c33702f7175697a2e706e67"
},{
    # Question id 6
    title: "Where do you put the content the user will see on the page?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer D',
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # Question id 7
    title: "What tag houses all of the HTML code you will write?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer A',
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # Question id 8
    title: "Which tag holds the information that will be displayed in the tab of the browser?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer C',
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # Question id 9
    title: "Where does all of the metadata (such as fonts, links to stylesheets, etc.) live?",
    multiple_choice: true,
    content:'Answer A*/Answer B*/Answer C*/Answer D',
    answer:'Answer B',
    lesson_id: 3,
    code_module_id: 1,
    img_src: "https://camo.githubusercontent.com/3eaa36c6a4e9c8f51729cf3a82d8a7abafc05623/68747470733a2f2f692e6962622e636f2f434237365678432f53637265656e2d53686f742d323032302d30342d30372d61742d31302d33372d30382d414d2e706e67"
},{
    # IDE Question id 10
    title: "Practice with attributes",
    multiple_choice: true,
    content:'Create your first link! Write code that will link a user to the wikipedia site for Cholula hot sauce*/Answer 2',
    answer:'Answer 2',
    lesson_id: 4,
    code_module_id: 1
},{
    # IDE Question id 11
    title: "Practice with attributes Part 2",
    multiple_choice: true,
    content:'Change the font colors below. First paragraph yellow, second paragraph blue, third paragraph red.
    
    <p>Yellow is a star, yellow is the sun, yellow is the moon when the day is done</p>

    <p>Blue is the ocean, blue is the sky, blue is the berries i put in my pie</p>

    <p>Red is an apple, red is a cherry, red is a rose, and a ripe strawberry</p>*/Answer 2',
    answer:'Answer 2',
    lesson_id: 4,
    code_module_id: 1
},{
    # IDE Question id 12
    title: "Introduction To Tables",
    multiple_choice: true,
    content:'First, we will need to code opening and closing <table> tags.

    <table>
    </table>
    
    Next we will need to tell the table how many rows we would like. We do this by nesting <tr> (table row) tags inside of the <table> tags. The table we hope to make will have three rows.

        <table>
          <tr></tr>
          <tr></tr> 
          <tr></tr>
        </table>*/Answer 2',
    answer:'Answer 2',
    lesson_id: 5,
    code_module_id: 2
},{
    # IDE Question id 13
    title: "Introduction To Table Nesting And Cells",
    multiple_choice: true,
    content:"Now we need to tell the table how many columns we will need. We do this by nesting <td> (table data) tags inside of the <tr> tags. Each <td> tag represents a cell in the row. We know we want the table to be three cells wide. First things first though, we need to stay organized since our table is getting more complicated! We are going to drop all of the closing </tr> tags down to a new line before adding in our <td>'s. This will make it very clear to us where exactly each row ends.
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
        Look how clean that is! Each nested section is indented a single tab over and we can clearly see where all of our elements begin and end!*/Answer 2",
    answer:'Answer 2',
    lesson_id: 5,
    code_module_id: 2
},{
    # IDE Question id 14
    title: "Introduction To Adding Data Into A Table",
    multiple_choice: true,
    content:"We probably want our table to contain some data right? Let's drop some text inside of the cells in the table.
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
        </table>*/Answer 2",
    answer:'Answer 2',
    lesson_id: 5,
    code_module_id: 2
},{
    # IDE Question id 15
    title: "Great Work! Practice Coding Out The HTML Table",
    multiple_choice: true,
    content:"Code the table below. Hint! You will need to do a little bit of research on <th> instead of <td>:*/Answer 2",
    answer:'Answer 2',
    lesson_id: 5,
    code_module_id: 2,
    img_src: "https://camo.githubusercontent.com/408a38b72849652bae524ac29f7d743d016bae24/68747470733a2f2f692e6962622e636f2f746d306b644a642f53637265656e2d53686f742d323032302d30342d30382d61742d31302d34342d33312d414d2e706e67"
},{
    # IDE Question id 16
    title: "Ordered List",
    multiple_choice: true,
    content:"Let's walk through the process. Say we want to create a seating list for a party at our restaurant. We have 2 tables, and we want to have 3 people at every table.

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
    Our list is starting to take shape!*/Answer 2",
    answer:'Answer 2',
    lesson_id: 6,
    code_module_id: 3,
    img_src: "https://camo.githubusercontent.com/f50bc64e157588e4568b750de97cf1f598127b7a/68747470733a2f2f692e6962622e636f2f67746d5a3162322f53637265656e2d53686f742d323032302d30342d30392d61742d31302d34332d35382d414d2e706e67"
},{
    # IDE Question id 17
    title: "Unordered List",
    multiple_choice: true,
    content:"Now it's time to assign guests to tables. We can do that by nesting a unordered lists inside of out ordered lists. We will start by dropping the closing </li> tags down to the next line to make room for our nested list. Like in the Tables Module, we want our code to be very organized and clean.
        <ol>
          <li>Patio
          </li>
          <li>Dining Room
          </li>
        </ol>
        Between our opening and closing <li> tags, we are going to start new unordered lists. We already know that each table will have three guests. We can go ahead and add three <li>'s (list items) inside of each <ul> (unordered list):
        <ol>
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
        Looking good!*/Answer 2",
    answer:'Answer 2',
    lesson_id: 6,
    code_module_id: 3,
    img_src: "https://camo.githubusercontent.com/56953c64e651591f50f0fb446598ef6f254f0a9f/68747470733a2f2f692e6962622e636f2f307456717934582f53637265656e2d53686f742d323032302d30342d30392d61742d31302d35312d31362d414d2e706e67"
},{
    # IDE Question id 18
    title: "Final Nested List",
    multiple_choice: true,
    content:"Finally, we can add the guests' names to each <li> within the <ul>'s:
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
    Woo! That's a good lookin' list!*/Answer 2",
    answer:'Answer 2',
    lesson_id: 6,
    code_module_id: 3,
    img_src: "https://camo.githubusercontent.com/3be7a620cab2e641428b54d2855b55794d64ae09/68747470733a2f2f692e6962622e636f2f376a76304672792f53637265656e2d53686f742d323032302d30342d30392d61742d31302d35332d32312d414d2e706e67"
},{
    # IDE Question id 19
    title: "List Challenge",
    multiple_choice: true,
    content:"Create the code for a webpage that will display the following recipe for simple cookies:*/Answer 2",
    answer:'Answer 2',
    lesson_id: 6,
    code_module_id: 3,
    img_src: "https://camo.githubusercontent.com/e7168fe1ba3208860fc98e6f9bc4f427cc63f520/68747470733a2f2f692e6962622e636f2f4e724b764273502f53637265656e2d53686f742d323032302d30342d30392d61742d31312d31302d34362d414d2e706e67"
},{
    # IDE Question id 20
    title: "JS Math!",
    multiple_choice: true,
    content:"Practice with this arithmetic:

    Multiply 77 times 38 --> 2926
    Add 6.7 and -40 --> -33.3
    Subtract 2 from 21 --> 19
    Divide 99 by 3 --> 33*/Answer 2",
    answer:'Answer 2',
    lesson_id: 8,
    code_module_id: 4
},{
    # Question id 21
    title: "Quiz! Which One Assigns value?",
    multiple_choice: true,
    content:"Answer: =*/Answer: ==*/Answer: ===",
    answer:'Answer: =',
    lesson_id: 9,
    code_module_id: 4
},{
    # Question id 22
    title: "Quiz! Which One Is Strict Equality Comparison?",
    multiple_choice: true,
    content:"Answer: =*/Answer: ==*/Answer: ===",
    answer:'Answer: ===',
    lesson_id: 9,
    code_module_id: 4
},{
    # Question id 23
    title: "Quiz! Which One Is Abstract Equality Comparison?",
    multiple_choice: true,
    content:"Answer: =*/Answer: ==*/Answer: ===",
    answer:'Answer: ==',
    lesson_id: 9,
    code_module_id: 4
},{
    # IDE Question id 24
    title: "Variable Practice",
    multiple_choice: true,
    content:"1.Set a variable called myDog to equal Bolt

    2.Set another variable to myCat to equal Duchess

    3.Set another variable to myFish to equal Bubbles

    4.Call myDog, myCat, and myFish*/Answer: ===",
    answer:'Answer: ===',
    lesson_id: 15,
    code_module_id: 5
},{
    # IDE Question id 25
    title: "Variable Practice",
    multiple_choice: true,
    content:"1.Set a variable called myDog to equal Bolt

    2.Set another variable to myCat to equal Duchess

    3.Set another variable to myFish to equal Bubbles

    4.Call myDog, myCat, and myFish*/Answer: ===",
    answer:'Answer: ===',
    lesson_id: 15,
    code_module_id: 5
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

