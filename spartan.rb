https://coolors.co/export/pdf/001514-f0edee-7fb7b5-cee5f2-2c666e


<header class="navbar navbar-fixed-top navbar-default">
  <div class="container-fluid">
    <%= link_to "pegasus", root_path, id: "logo" %>
    <nav>
      <ul class="nav navbar-nav navbar-left">
      <li><button type="button" class="btn btn-default navbar-btn"><%= link_to 'Add video now!', new_video_path %></button></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><%= link_to 'Home', home_path %></li>
        <li><%= link_to 'Videos', root_path %></li>
        <li><%# link_to 'Add Video', new_video_path %></li>
        <li><%= link_to 'Leagues', leagues_path %></li>
        <li><%# link_to 'Help', help_path %></li>

      <% if logged_in? %>
        <li><%= link_to 'Users', users_path %></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              Account <b class="caret"></b>
            </a>
          <ul class="dropdown-menu">
            <li><%= link_to "Profile", current_user %></li>
            <li><%= link_to "Settings", edit_user_path(current_user) %></li>
            <li class="divider"></li>
            <li><%= link_to "Log out", logout_path, method: "delete" %></li>
          </ul>
        </li>
        <% else %>
          <li><%= link_to "Log in", login_path %></li>
        <% end %>



        <% if logged_in? %>

        <li><button type="button" class="btn btn-default navbar-btn"><%= link_to "Sign up now!", signup_path %></button></li>

        <% if current_user %>
        <li>
          <span class="navbar-text" .pull-right><%= current_user.name %></span>
        </li>
        <li><%# link_to 'Log Out', logout_path, method: "delete" %></li>
        <% else %>
        <li><%# link_to 'Sign In', '/auth/google_oauth2' %></li>
        <% end %>

      </ul>
    </nav>
  </div>
</header>



<% if logged_in? %>
  <li><%= link_to 'Users', users_path %></li>
  <% else %>

<form id="signin" class="navbar-form navbar-right" role="form">
  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <input id="email" type="email" class="form-control" name="email" value="" placeholder="Email Address">
  </div><!-- end input-group -->

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    <input id="password" type="password" class="form-control" name="password" value="" placeholder="Password">
  </div><!-- end input-group -->

  <button type="submit" class="btn btn-primary"><%= link_to 'Log In', '/login' %></button>
</form><!-- end form -->
<% end %>



<!-- Log-in -->
<% if logged_in? %>
  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
      <li><%= link_to 'Users', users_path %></li>
      <li><%= link_to "Profile", current_user %></li>
      <li><%= link_to "Settings", edit_user_path(current_user) %></li>
      <li class="divider"></li>
      <li><%= link_to "Log out", logout_path, method: "delete" %></li>
    </ul><!-- end dropdown-menu -->
  </li><!-- end dropdown -->
<% else %>
  <li><%= link_to "Log in", login_path %></li>
<% end %>



<div class="log_in">
  <% if logged_in? %>

  <li></li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        Account <b class="caret"></b>
      </a>

      <ul class="dropdown-menu">
        <li></li>
        <li></li>
        <li class="divider"></li>
        <li></li>
      </ul>
    </li>

  <% else %>
    <li><%= link_to "Log in", login_path %></li>
  <% end %>

</div>
