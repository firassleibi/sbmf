@extends('layouts.app')

@section('content')
  <div id="main">
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
        <section id="content">
            <div class="divider"></div>
              <div class="row">
                <div class="col-md-3">
                  <select class="browser-default" id="spec">
                      <option value="" disabled selected>الاخصائي</option>
                      @foreach ($specialists as $b)
                        <option value="{{$b->specialist}}">{{$b->specialist}}</option>
                      @endforeach
                  </select>
                </div>
                <div class="col-md-3">
                  <div id="input-checkboxes" class="section">
                      <form action="#">
                        <p>
                          <input type="checkbox" class="filled-in m" id="filled-in-m" checked="checked" />
                          <label for="filled-in-m">شهري</label>
                        </p>
                        <p>
                          <input type="checkbox" class="filled-in q" id="filled-in-q"  checked="checked" />
                          <label for="filled-in-q">ربع سنوي</label>
                        </p>
                       
                      </form>
                   </div>
                  </div>
                  <div class="col-md-3">
                   <div id="input-checkboxes" class="section">
                      <form action="#">
                        <p>
                          <input type="checkbox" class="filled-in sch" id="filled-in-sch" checked="checked" />
                          <label for="filled-in-sch">اضهار المصروف</label>
                        </p>
                        <p>
                          <input type="checkbox" class="filled-in sch-q" id="filled-in-sch-q" checked="checked" />
                          <label for="filled-in-sch-q">اظهار المجدول</label>
                        </p>
                       
                      </form>
                   </div>
                  </div>     
               </div>
              <div class="row">
                <div class="col s12 m12 12">  
                    <div id="jsGrid-custom" ></div>
                </div>
            </div>
            <div class="divider"></div>
        </section>
    </div>
  </div>

  @endsection
