        # na aplication na head
        #<%= stylesheet_link_tag "forem" %>
        #<%= javascript_include_tag "forem" %>

        # na vendor/assests/stylesheets
        #/*
        # *= require forem-bootstrap
        #*/

        # na vendor/javascripts/forem.js.coffe
        #= require jquery

        # na layouts
        #<%= stylesheet_link_tag    "application", media: "all", "data-turbolinks-track" => true %>
        #<%= javascript_include_tag "application", "data-turbolinks-track" => true %>
        
        #<%= stylesheet_link_tag "forem" %>
        #<%= javascript_include_tag "forem" %>



        # no /layouts/forem/default
        #<% if user_signed_in? %>
        #<li>
        #<%= link_to('Logout', destroy_user_session_path, :method=>'delete') %>        
        #</li>
        #<% else %>
        #<li>
        #<%= link_to('Login', new_user_session_path)  %>  
        #</li>
        #<% end %>



        #<div class="field">
        #<%= f.select :ide, ['Indiferente', 'Visual Studio', 'Eclipse','Netbeans', 'Xcode' , 'rubyMine' , 'Dev C++', 'Android Studio'], :include_blank => "IDE" %>
        #</div>
        #<div class="field">
        #<%= f.select :repositorio, ['Indiferente', 'GitHub', 'SourceForge','GoogleCode', 'BitBucket' , 'LauncjPad' , 'CodePlex'], :include_blank => "Repositorio" %>
        #</div>
        #<div class="field">
        #<%= f.select :database, ['Indiferente', 'Oracle', 'MySQL','PostgreSQL', 'DB2' , 'MongoDB' , 'SQLite', 'Access', 'Sybase', 'Teradata'], :include_blank => "Banco" %>
        #</div>
        #<div class="field">
        #<%= f.select :status, ['Indiferente', 'Ativo', 'Aprovação', 'Inativo'], :include_blank => "Status" %>
        #</div>
        #<div class="field">
        #<%= f.select :linguagem, ['Indiferente', 'Assembler', 'C', 'C++', 'C#', 'Objective C', 'Java', 'Ruby', 'Phyton', 'Perl', 'HTML', 'ASP', 'Javascript', 'Smalltalk', 'XML', 'Lua'], :include_blank => "Linguagem" %>
        #</div> 

        #params[:os]



        #<%= select_tag :nome, options_from_collection_for_select(Projeto.all, :nome, :nome, params[:nome]) %>

        #rake dropbox:authorize APP_KEY=n01ho65na6v62oh APP_SECRET=ypk6lucwbn007xv ACCESS_TYPE=dropbox|app_folder
