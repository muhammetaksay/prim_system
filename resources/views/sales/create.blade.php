<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Add Sales') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    @if(session()->has('message'))
                        <div class="alert alert-success">
                            {{ session()->get('message') }}
                        </div>
                    @endif
                    <form action="{{ route('sales.create') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="">User</label>
                            <select name="user_id" id="" class="form-control">
                                @foreach ($users as $item)
                                    <option value="{{ $item->id }}"> {{ $item->name }} </option> 
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="">Product</label>
                            <select name="product_id" id="" class="form-control">
                                @foreach ($products as $item)
                                    <option value="{{ $item->id }}"> {{ $item->name }} </option>  
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="">Month</label>
                            <select name="month" id="" class="form-control">
                                @for($i=1; $i<13; $i++)
                                    <option value="{{ $i }}" @if($i == 3) selected @endif> {{ $i }} </option>  
                                @endfor
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="">Year</label>
                            <input type="text" name="year" value="2022" class="form-control">
                        </div>

                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
