<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <div class="navbar-icon-container">
        <a href="#" class="navbar-icon pull-right visible-xs" id="nav-btn"><i class="fa fa-bars fa-lg white"></i></a>
        <a href="#" class="navbar-icon pull-right visible-xs" id="sidebar-toggle-btn"><i class="fa fa-search fa-lg white"></i></a>
      </div>
      <a class="navbar-brand" href="#">{{Voyager::setting('admin_title')}}</a>
    </div>
    <div class="navbar-collapse collapse">
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group has-feedback">
            <input id="searchbox" type="text" placeholder="Search" class="form-control">
            <span id="searchicon" class="fa fa-search form-control-feedback"></span>
        </div>
      </form>
      <ul class="nav navbar-nav">
        <li><a href="#" data-toggle="collapse" data-target=".navbar-collapse.in" id="about-btn"><i class="fa fa-question-circle white"></i>&nbsp;&nbsp;About</a></li>
        <li><a href="#" data-toggle="collapse" data-target=".navbar-collapse.in" id="full-extent-btn"><i class="fa fa-arrows-alt"></i>&nbsp;&nbsp;Zoom To Full Extent</a></li>
        <li class="hidden-xs"><a href="#" data-toggle="collapse" data-target=".navbar-collapse.in" id="list-btn"><i class="fa fa-list white"></i>&nbsp;&nbsp;POI List</a></li>
      </ul>
    </div><!--/.navbar-collapse -->
  </div>
</div>