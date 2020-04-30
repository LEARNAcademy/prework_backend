# LEARN Prework Application API



Base setup with Devise

#### Schema
rails g resource CodeModule lesson:string progress:string completed:boolean user_id:integer

rails g resource Lesson content:text question:string completed:boolean code_module_id:integer

rails g resource Question content:text answer:text correct:boolean completed:boolean resources:text lesson_id:integer

rails g resource Resource name:string link:text question_id:integer
