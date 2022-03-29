<!DOCTYPE html>
<html xmlns:LaravelLocalization="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="{{ url('/') }}">WELCOME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('offers/create') }}">Add Document</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('offers/all') }}">Display Documents</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('/report') }}">Reports</a>
                </li>
                @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                <li class="nav-item">
                    <a class="nav-link" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">{{ $properties['native'] }}</a>
                </li>
                @endforeach
{{--                @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)--}}
{{--                    <li>--}}
{{--                        <a rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">--}}
{{--                            {{ $properties['native'] }}--}}
{{--                        </a>--}}
{{--                    </li>--}}
{{--                @endforeach--}}

{{--                <li class="nav-item dropdown">--}}
{{--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--}}
{{--                        choose action--}}
{{--                    </a>--}}
{{--                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">--}}
{{--                        <a class="dropdown-item" href="{{ route('offers.create') }}">Add Document</a>--}}
{{--                        <a class="dropdown-item" href="{{ route('offers.all') }}">Display Documents</a>--}}
{{--                        <div class="dropdown-divider"></div>--}}
{{--                        <a class="dropdown-item" href="#">Something else here</a>--}}
{{--                    </div>--}}
{{--                </li>--}}

            </ul>
            <form class="form-inline my-2 my-lg-0"  method="GET" action="{{route('offers.filter')}}" enctype="multipart/form-data" >
                {{--            <input class="form-control mr-sm-2"  type="search" name="search_" placeholder="Search" aria-label="Search">--}}
                <select name ="search_">
                    <option value="all"> </option>
                    <option value="vtms">vtms</option>
                    <option value="security">security</option>
                    <option value="radars">radars</option>
                    <option value="tawkitat">tawkitat</option>
                    <option value="power">power</option>
                    <option value="hospital_centers">hospital_centers</option>
                    <option value="technical_office">technical_office</option>
                </select>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                      {{__('messages.Add Offer')}}

                </div>
                @if(Session::has ('success'))
                <div class="alert alert-success" role="alert">
                      {{ Session :: get('success') }}
                </div>
                @endif
                <form method="POST" action="{{route('offers.store')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">

                    <select name ="dir">
                        <option value="vtms">vtms</option>
                        <option value="security">security</option>
                        <option value="radars">radars</option>
                        <option value="tawkitat">tawkitat</option>
                        <option value="power">power</option>
                        <option value="hospital_centers">hospital_centers</option>
                        <option value="technical_office">technical_office</option>
                    </select>
                        <label for="exampleInputEmail1">تحديد القطاع</label>
                    </div>
                    <label for="exampleInputEmail1">أختر صوره المستند</label>
                    <input type="file" class="form-control" placeholder="{{__('messages.photo')}}"  name="photo">
                    @error('photo')

                    <small class="form-text text-danger">{{$message}}</small>
                    @enderror
{{--                    <input name="_token" value="{{csrf_token()}}">--}}
                    <table class="table">
                        <tr>
                            <td>
                               <div class="form-group">
                        <label for="exampleInputEmail1">{{__('messages.input')}}</label>
                        <input type="text" class="form-control" name ="input"  aria-describedby="emailHelp" placeholder="{{__('messages.input')}}">
                        @error('input')
                        <small class="form-text text-danger">{{$message}}</small>
                        @enderror
                    </div>
                            </td>
                            <td>
                                <div class="form-group">
                        <label for="exampleInputEmail1">{{__('messages.output')}}</label>
                        <input type="text" class="form-control" name ="output"  aria-describedby="emailHelp" placeholder="{{__('messages.output')}}">
                        @error('output')
                        <small class="form-text text-danger">{{$message}}</small>
                        @enderror
                    </div>
                            </td>
                        </tr>
                        <tr>
                          <td>
                              <div class="form-group">
                        <label for="exampleInputEmail1">{{__('messages.type')}}</label>
                        <input type="text" class="form-control" name ="type"  aria-describedby="emailHelp" placeholder="{{__('messages.type')}}">
                        @error('type')
                        <small class="form-text text-danger">{{$message}}</small>
                        @enderror
                    </div>
                          </td>
                          <td>
                             <div class="form-group">
                        <label for="exampleInputEmail1">{{__('messages.Offer Name ar')}}</label>
                        <input type="text" class="form-control" name ="name_ar"  aria-describedby="emailHelp" placeholder="{{__('messages.Offer Name ar')}}">
                        @error('name')
                        <small class="form-text text-danger">{{$message}}</small>
                        @enderror
                    </div>
                          </td>
                      </tr>
                        <tr>
                            <td>
                              <div class="form-group">
                        <label for="exampleInputEmail1">{{__('messages.Offer Name en')}}</label>
                        <input type="text" class="form-control" name ="name_en" aria-describedby="emailHelp" placeholder="{{__('messages.Offer Name en')}}">
                        @error('name')
                        <small class="form-text text-danger">{{$message}}</small>
                        @enderror
                    </div>
                            </td>
                            <td>
                              <div class="form-group">
                        <label for="exampleInputPassword1">{{__('messages.Offer Price')}}</label>
                        <input type="text" class="form-control" name ="price" placeholder="{{__('messages.Offer Price')}}">
                        @error('price')
                        <small class="form-text text-danger">{{$message}}</small>
                        @enderror
                    </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <div class="form-group ">

                                    <label for="exampleInputEmail1">{{__('messages.Offer details ar')}}</label>
                                    <input type="text" class="form-control" name="details_ar"  placeholder="{{__('messages.Offer details ar')}}">
                                    @error('details')
                                    <small class="form-text text-danger">{{$message}}</small>
                                    @enderror
                                 </div>
                            </td>
                            <td>
                                   <div class="form-group ">
                                        <label for="exampleInputEmail1">{{__('messages.Offer details en')}}</label>
                                        <input type="text" class="form-control" name="details_en" placeholder="{{__('messages.Offer details en')}}">
                                        @error('details')
                                        <small class="form-text text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                            </td>
                        </tr>
                        <tr>
                            <button type="submit" class="btn btn-primary">{{__('messages.Save Offer')}}</button>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
