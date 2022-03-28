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
                    Users Aim Table 2022 Month {{$month}} 
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Total Aim</th>
                            <th scope="col">Aim</th>
                            <th scope="col">Remainder</th>
                            <th scope="col">%</th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ($newArr as $user)
                                <tr>
                                    <th scope="row">{{ $user["user_id"] }}</th>
                                    <td>{{ $user["user_name"] }}</td>
                                    <td>{{ $user["total_aim"] }}</td>
                                    <td>{{ $user["aim"] }}</td>
                                    <td>{{ $user["remainder"] }}</td>
                                    <td>
                                        <?php 
                                        $progress = ceil($user['aim'] * 100 / $user['total_aim']);

                                        ?>
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar" style="width: <?=$progress;?>%;" aria-valuenow="<?=$progress;?>" aria-valuemin="0" aria-valuemax="100"></div>
                                            @if ($progress <= 80)
                                                {{$progress}}
                                            @endif
                                          </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
