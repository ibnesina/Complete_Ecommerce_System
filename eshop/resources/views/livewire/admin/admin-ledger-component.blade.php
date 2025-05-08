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
                            <div class="col-md-4 col-sm-4">
                                Products Ledger
                            </div>
                            {{-- <div class="col-md-4 col-sm-4">
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
                                    <th>Memo No.</th>
                                    <th>Description</th>
                                    <th>SKU</th>
                                    <th>Category</th>
                                    <th>Debit</th>
                                    <th>Credit</th>
                                    <th>Balance</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($products as $product)
                                    <tr>
                                        <td>{{$product->memo}}</td>
                                        <td>{{$product->description}}</td>
                                        <td>{{$product->SKU}}</td>
                                        <td>{{$product->category->name}}</td>
                                        <td>{{$product->debit}}</td>
                                        <td>{{$product->credit}}</td>
                                        <td>{{$product->balance}}</td>
                                        <td>{{$product->created_at}}</td>
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