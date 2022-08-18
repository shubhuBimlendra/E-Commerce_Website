<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Profile
                </div>
                <div class="panel-body">
                    <div class="col-md-4">
                        @if($user->profile->image)
                            <img src="{{asset('assets/images/profile')}}/{{$user->progile->image}}" width="100%" />
                        @else
                        <img src="{{asset('assets/images/profile/profile.jpg')}}" width="100%" />
                        @endif
                    </div>
                    <div class="col-md-8">
                        <p><b>Name: </b>{{$user->name}}</p>
                        <p><b>Email: </b>{{$user->email}}</p>
                        <p><b>Phone: </b>{{$user->profile->mobile}}</p>
                        <hr>
                        <p><b>Line1: </b>{{$user->line1}}</p>
                        <p><b>Line2: </b>{{$user->line2}}</p>
                        <p><b>city: </b>{{$user->city}}</p>
                        <p><b>Province: </b>{{$user->name}}</p>
                        <p><b>Country: </b>{{$user->name}}</p>
                        <p><b>Zip Code: </b>{{$user->name}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
