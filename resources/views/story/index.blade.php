@extends('layouts.app')

@push('styles')
    <style>
        .pagination {
            float: right;
        }
    </style>
@endpush

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="row mb-3">
                <div class="col-md-6 col-lg-7">
                    {{-- <Button class="btn btn-success">Create Story</Button> --}}
                </div>
                <div class="col-md-6 col-lg-5">
                    <form action="{{ route('stories.index') }}" method="GET" style="display: inline">
                        <div class="input-group">
                            <input type="text" class="form-control" name="search_keyword" value="{{ Request::has('search_keyword') ? Request::get('search_keyword') : '' }}" placeholder="Type and click on search button" aria-label="Type and click on search button" aria-describedby="button-addon2">
                            <button class="btn btn-outline-secondary" type="submit" id="button-addon2"> Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        @forelse ($Stories as $story)
            <div class="col-md-10">
                <div class="card border-secondary mb-3">
                    <div class="card-header">
                        <h5>{{ $story->title }}</h5>
                        <p>By <b>{{ $story->created_by_user->name }}</b> on <b>{{ $story->show_published_date }}</b> </p>
                    </div>
                    <div class="card-body text-justify">
                        {{ $story->body }}
                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-md-6">
                                <a href="{{ route('stories.show', $story->id) }}?xml=1" target="_blank" class="btn btn-secondary">XML</a>
                                <a href="{{ route('stories.show', $story->id) }}" target="_blank" class="btn btn-secondary">JSON</a>
                            </div>
                            <div class="col-md-6 text-right">
                                @auth
                                    @canany(['update', 'delete'], $story)
                                        <a href="{{ route('stories.edit', $story->id) }}" class="btn btn-primary">Edit</a>
                                        <button type="button" data-id={{ $story->id }} class="btn btn-danger delete-button">Delete</button>
                                    @endcanany
                                @endauth
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        @empty
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">{{ __('Not Available') }}</div>
                <div class="card-body"> Story Not Available ! </div>
            </div>
        </div>
        @endforelse
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-4">
                    <p>Showing {{ $Stories->currentPage() * 2 - 1   }} to {{ $Stories->currentPage() * 2 }}  out of  {{ $Stories->total() }} </p>
                </div>
                <div class="col-md-8 text-right">
                    {{ $Stories->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
{{-- delete modal  --}}
@include('layouts._delete_modal');
@endsection

@push('scripts')
    <script>
        $(document).ready(function(){
            $(document).on('click','.delete-button',function(){
                let storyId = $(this).attr('data-id');
                let url = '{{route('stories.index') }}' + '/' + storyId ;
                $('#delete_modal_form').attr('action',url);
                $('#delete_modal').modal('show');
            })
        });
    </script>
@endpush
