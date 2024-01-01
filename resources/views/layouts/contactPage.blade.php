<!doctype html>
<html class="no-js" lang="zxx">
    <head>
       @include('includes.head')
    </head>
    <body>
	
		<!-- Preloader -->
       @include('includes.preloader') 
        <!-- End Preloader -->
		
		
	
		<!-- Header Area -->
		@include('includes.header')
		<!-- End Header Area -->
		
	   @yield('contactUs')
		
		<!-- Footer Area -->
		@include('includes.footer')
		<!--/ End Footer Area -->
		
		@include('includes.footerJs')
    </body>
</html>