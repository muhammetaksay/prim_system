<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Home') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    Sales Table
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">User Name</th>
                            <th scope="col">Product Name</th>
                            <th scope="col">Transaction</th>
                            <th scope="col">Price</th>
                            <th scope="col">Rate</th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ($sales as $sale)
                                <tr>
                                    <th scope="row">{{ $sale["id"] }}</th>
                                    <td>{{ $sale->user ? $sale->user->name : ''}}</td>
                                    <td>{{ $sale->product ? $sale->product->name : '' }}</td>
                                    <td>{{ $sale["transaction_name"] }}</td>
                                    <td>{{ $sale["price"] }}</td>
                                    <td>{{ $sale["rate"] }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
