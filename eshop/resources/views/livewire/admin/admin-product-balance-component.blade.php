<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }

        @media (max-width:477px) {
            .vis-mob {
                display: none;
            }
        }
    </style>

    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6 col-sm-4">
                                Products Balance
                            </div>
                            {{-- <div class="col-md-6 col-sm-4">
                                <a href="{{route('admin.addpurchase')}}" class="btn btn-primary pull-right">Add New</a>
                            </div> --}}
                            {{-- <div class="col-md-4 vis-mob">
                                <input type="text" class="form-control" placeholder="Search..." wire:model="searchTerm"/>
                            </div> --}}
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Serial No.</th>
                                    <th>Name</th>
                                    <th>SKU</th>
                                    <th>Category</th>
                                    <th>Amount</th>
                                    <th>Rate ($)</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $i = 0;
                                @endphp
                                @foreach($products as $product)
                                    <tr>
                                        <td>{{$product->id}}</td>
                                        <td>{{$product->name}}</td>
                                        <td>{{$product->SKU}}</td>
                                        <td>{{$product->category->name}}</td>
                                        <td>{{$product->quantity}}</td>
                                        <td>{{number_format($product->rate, 2)}}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{-- {{$products->links()}} --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>          