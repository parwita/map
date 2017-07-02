<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1,user-scalable=no,maximum-scale=1,width=device-width">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="theme-color" content="#000000">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>{{Voyager::setting('admin_title')}} - {{Voyager::setting('admin_description')}}</title>

    <link rel="stylesheet" href="css/app.css">

    <link rel="apple-touch-icon" sizes="76x76" href="img/favicon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/favicon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/favicon-152.png">
    <link rel="icon" sizes="196x196" href="img/favicon-196.png">
    <link rel="icon" type="image/x-icon" href="img/favicon.ico">
  </head>

  <body>
    @include('includes.navbar')

    <div id="container">
		<div style="width: 100%; height: 100%;">
			{!! Mapper::render() !!}
		</div>
	</div>
    <div id="loading">
      <div class="loading-indicator">
        <div class="progress progress-striped active">
          <div class="progress-bar progress-bar-info progress-bar-full"></div>
        </div>
      </div>
    </div>

    @include('includes.about')

    <div class="modal fade" id="featureModal" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title text-primary" id="feature-title"></h4>
          </div>
          <div class="modal-body" id="feature-info"></div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- Script Includes -->
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>