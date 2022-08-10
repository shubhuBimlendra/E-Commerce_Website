<main id="main" class="main-site left-sidebar">

<div class="container">

    <div class="wrap-breadcrumb">
        <ul>
            <li class="item-link"><a href="/" class="link">home</a></li>
            <li class="item-link"><span>Contact us</span></li>
        </ul>
    </div>
    <div class="row">
        <div class=" main-content-area">
            <div class="wrap-contacts ">
                <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                    <div class="contact-box contact-form">
                        <h2 class="box-title">Leave a Message</h2>
                        @if(Session::has('message'))
                            <div class="alert alert-success" id="alert">{{Session::get('message')}}</div>
                        @endif
                        <form name="frm-contact" wire:submit.prevent="sendMessage">

                            <label for="name">Name<span>*</span></label>
                            <input type="text" value="" id="name" name="name" wire:model="name">
                            @error('name') <p class="text-danger">{{$message}}</p> @enderror

                            <label for="email">Email<span>*</span></label>
                            <input type="text" value="" id="email" name="email" wire:model="email">
                            @error('email') <p class="text-danger">{{$message}}</p> @enderror

                            <label for="phone">Number Phone</label>
                            <input type="text" value="" id="phone" name="phone" wire:model="phone">
                            @error('phone') <p class="text-danger">{{$message}}</p> @enderror

                            <label for="comment">Comment</label>
                            <textarea name="comment" id="comment" wire:model="comment"></textarea>
                            @error('comment') <p class="text-danger">{{$message}}</p> @enderror

                            <input type="submit" name="ok" value="Submit" >

                        </form>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                    <div class="contact-box contact-info">
                        <div class="wrap-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114005.899406129!2d85.86675915442424!3d26.754446981890126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ec4005fb138bb9%3A0x533a64cf0e13c2d1!2sJanakpur!5e0!3m2!1sen!2snp!4v1660112549997!5m2!1sen!2snp" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <h2 class="box-title">Contact Detail</h2>
                        <div class="wrap-icon-box">

                            <div class="icon-box-item">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <div class="right-info">
                                    <b>Email</b>
                                    <p>{{$setting->email}}</p>
                                </div>
                            </div>

                            <div class="icon-box-item">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <div class="right-info">
                                    <b>Phone</b>
                                    <p>{{$setting->phone}}</p>
                                </div>
                            </div>

                            <div class="icon-box-item">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <div class="right-info">
                                    <b>Address</b>
                                    <p>{{$setting->address}}</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div><!--end main products area-->

    </div><!--end row-->

</div><!--end container-->

</main>
