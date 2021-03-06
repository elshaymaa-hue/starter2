<!DOCTYPE html>
{{--<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">--}}
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">


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
            justify-content: right;
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

        .error {
            color: #ae1c17;
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
        table, th, td {
            align:right;

        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="{{ url('/') }}">الصفحة الرئيسية</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="{{ url('power_stations/create') }}">Add Station</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ url('power_stations/all') }}">Display Stations</a>
            </li>
            
            {{-- <li class="nav-item">
                <a class="nav-link" href="{{route('offers.next_page') }}">next page</a>
            </li> --}}
{{--            <li class="nav-item">--}}
{{--                <a class="nav-link" href="{{ url('/exportpdf') }}">downloadpdf </a>--}}
{{--            </li>--}}
            @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                <li class="nav-item active">
                    <a class="nav-link"
                       href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}"> {{ $properties['native'] }}
                        <span class="sr-only">(current)</span></a>
                </li>
            @endforeach


        </ul>
        {{-- <form class="form-inline my-2 my-lg-0"  method="GET" action="{{route('offers.filter')}}" enctype="multipart/form-data" >

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
        </form> --}}


    </div>
</nav>


@if(Session::has('success'))

    <div class="alert alert-success">
           {{Session::get('success')}}
    </div>
    @endif


@if(Session::has('error'))
     <div class="alert alert-danger">
         {{Session::get('error')}}
     </div>
@endif

<table class="table" >
    <thead>
    <tr   align="right" lang="ar">
        <th scope="col">#</th>
        <th scope="col">{{__('messages.station name')}}</th>
        <th scope="col">{{__('messages.UpsSttp')}}</th>
        <th scope="col">{{__('messages.UpsRadar')}}</th>
        <th scope="col">{{__('messages.ContractUPS')}}</th>
        <th scope="col">{{__('messages.UpslInstallation')}}</th>
        <th scope="col">{{__('messages.PreDeliveryUPS')}}</th>
        <th scope="col">{{__('messages.FinalDeliveryUPS')}}</th>
        <th scope="col">{{__('messages.StatusRatioRadar')}}</th>
        <th scope="col">{{__('messages.StatusRatioSTTB')}}</th>
        <th scope="col">{{__('messages.LastMessage')}}</th>
    
        <th scope="col"  align="right" lang="ar">{{__('messages.Desil' )}}</th>
  
        <th scope="col">{{__('messages.DeisilInstallation')}}</th>
    
        
        <th scope="col">{{__('messages.ContractDesil' )}}</th>
    </tr>
    <tr   align="right" lang="ar">
        <th></th>
        <th></th>
        <th scope="col">{{__('messages.PreDeliveryDesil' )}}</th>
        <th scope="col">{{__('messages.FinalDeliveryDesil')}}</th>
        <th scope="col">{{__('messages.ATS1Transit' )}}</th>
        <th scope="col">{{__('messages.IsolationTransformer' )}}</th>
        <th scope="col">{{__('messages.ATS2VTMS' )}}</th>
        <th scope="col">{{__('messages.AvrRadar' )}}</th>
        <th scope="col">{{__('messages.SurgeRadar' )}}</th>
        <th scope="col">{{__('messages.TawkitatSurgeProtect')}}</th>
        <th scope="col">صوره المحطة</th>
      


    </tr>
    </thead>
    <tbody>


    @foreach($power_stations as $power_station)

        <tr   align="right" lang="ar">
            <th scope="row">{{$power_station -> id}}</th>
            <td>{{$power_station -> station_name}}</td>
            <td>{{$power_station -> UpsSttp}}</td>
            <td>{{$power_station -> UpsRadar}}</td>
            <td>{{$power_station->ContractUPS}}</td>
            <td>{{$power_station->UpslInstallation}}</td>
            <td>{{$power_station->PreDeliveryUPS}}</td>
            <td>{{$power_station->FinalDeliveryUPS}}</td>
            <td>{{$power_station->StatusRatioRadar}}</td>
            <td>{{$power_station->StatusRatioSTTB}}</td>
            <td>{{$power_station->LastMessage}}</td>
       
            <td >{{$power_station->Desil}}</td>
        
            <td>{{$power_station->DeisilInstallation}}</td>
       
            <td>{{$power_station->ContractDesil}}</td>
        </tr>
        <tr   align="right" lang="ar">
            <td></td>
            <td></td>
            <td>{{$power_station->PreDeliveryDesil}}</td>
            <td>{{$power_station->FinalDeliveryDesil}}</td>
            <td>{{$power_station->ATS1Transit}}</td>
            <td>{{$power_station->IsolationTransformer}}</td>
            <td>{{$power_station->ATS2VTMS}}</td>
            <td>{{$power_station->AvrRadar}}</td>
            <td>{{$power_station->SurgeRadar}}</td>
            <td>{{$power_station->TawkitatSurgeProtect}}</td>

            @if($power_station->photo)

            <td><embed src="{{asset('images/power_stations/'.$power_station->photo)}}" width="300px" height ="300px"></td>
            @else
                <td></td>
            @endif

            <td>
                <a href="{{url('power_stations/edit/'.$power_station -> id)}}" class="btn btn-success"> {{__('messages.update')}}</a>
            </td>
                <td>
                <a href="{{route('power_stations.delete',$power_station -> id)}}" class="btn btn-danger"> {{__('messages.delete')}}</a>
            </td>

        </tr>
    @endforeach

    </tbody>



    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session::get('success') }}
        </div>
    @endif

    {{$power_stations->onEachSide(5)->links()}}
</table>
<script>
    const export2Pdf = async () => {

        let printHideClass = document.querySelectorAll('.print-hide');
        printHideClass.forEach(item => item.style.display = 'none');
        await fetch('http://localhost:8000/export-pdf', {
            method: 'GET'
        }).then(response => {
            if (response.ok) {
                response.json().then(response => {
                    var link = document.createElement('a');
                    link.href = response;
                    link.click();
                    printHideClass.forEach(item => item.style.display='');
                });
            }
        }).catch(error => console.log(error));
    }
</script>
</body>
</html>
