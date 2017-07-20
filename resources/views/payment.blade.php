@extends('layouts.app')

@section('content')
  <!-- END HEADER -->
  <!-- START MAIN -->
  <div id="main">
    <!-- START WRAPPER -->
    <div class="wrapper">

      <!-- START LEFT SIDEBAR NAV-->
        <aside id="left-sidebar-nav">
            <ul id="slide-out" class="side-nav leftside-navigation">
                <li class="user-details cyan darken-2">
                    <div class="row">
                        
                        <div class="col col s8 m8 l8">
                           
                            <p class="user-roal">Admin</p>
                        </div>
                    </div>
                </li>
                <li class="bold"><a href="/home" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i> الميزانية</a>
                </li>
                <li class="bold"><a href="/payment" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i> الدفع</a>
                </li>
            </ul>
            <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light cyan"><i class="mdi-navigation-menu"></i></a>
        </aside>
      <!-- END LEFT SIDEBAR NAV-->

      <!-- //////////////////////////////////////////////////////////////////////////// -->

      <!-- START CONTENT -->
      <section id="content">

        <!--breadcrumbs start-->
        <div id="breadcrumbs-wrapper">
            <!-- Search for small screen -->
            <div class="header-search-wrapper grey hide-on-large-only">
                <i class="mdi-action-search active"></i>
                <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Explore Materialize">
            </div>
          <div class="container">
            <div class="row">
              <div class="col s12 m12 l12">
               
              </div>
            </div>
          </div>
        </div>
        <!--breadcrumbs end-->

      <div class="row">
              <div class="row">
                <div class="col s12 m12 12">
                    
                    <div id="jsGrid-custom1"></div>
                </div>
            </div>
            
            </div>
            
            <div class="divider"></div>
           
          </div>
          <!-- Floating Action Button -->
         
            <!-- Floating Action Button -->
        </div>
        <!--end container-->
      </section>
      <!-- END CONTENT -->


      <!-- START RIGHT SIDEBAR NAV-->
      <aside id="right-sidebar-nav">
        <ul id="chat-out" class="side-nav rightside-navigation">
            <li class="li-hover">
            <a href="#" data-activates="chat-out" class="chat-close-collapse right"><i class="mdi-navigation-close"></i></a>
            <div id="right-search" class="row">
                <form class="col s12">
                    <div class="input-field">
                        <i class="mdi-action-search prefix"></i>
                        <input id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Search</label>
                    </div>
                </form>
            </div>
            </li>
            <li class="li-hover">
                
            </li>
        </ul>
      </aside>
      <!-- LEFT RIGHT SIDEBAR NAV-->

    </div>
    <!-- END WRAPPER -->

  </div>
  <!-- END MAIN -->



  <!-- //////////////////////////////////////////////////////////////////////////// -->
@endsection
