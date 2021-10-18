@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Update Story') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('stories.update',$story) }}">
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label for="title">{{ __('Title') }} : <span class="text-danger">*</span></label>
                                <input id="title" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title',$story->title) }}" required autocomplete="title" autofocus>

                                @error('title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>

                        <div class="form-group">
                            <label for="body" class="">{{ __('Body') }} : <span class="text-danger">*</span> </label>
                                <textarea class="form-control @error('body') is-invalid @enderror" name="body" required autocomplete="body" id="body" cols="30" rows="10">{{ old('body',$story->body) }}</textarea>
                                @error('body')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>

                        <div class="form-group">
                            <label for="published_date">{{ __('Published Date') }} : <span class="text-danger">*</span> </label>
                            <input id="published_date" type="text" class="form-control @error('published_date') is-invalid @enderror" name="published_date" value="{{ old('published_date',Carbon\Carbon::parse($story->published_date)->format('Y-m-d')) }}" required autocomplete="published_date">

                            @error('published_date')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 text-left">
                                <a href="{{ route('home') }}" class="btn btn-light">Back</a>
                            </div>

                            <div class="col-md-6 text-right">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Submit') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
    <script>
         $('#published_date').datepicker({
             format : 'yyyy-mm-dd'
         });
    </script>
@endpush
