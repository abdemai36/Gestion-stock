@extends('Dashboard.layouts.master')

@section('content')
<div class="row">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="page-header">
            <h2 class="pageheader-title">Gestion des
                clients</h2>
            <hr>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @else
        @endif
        <div class="card">
            <h5 class="card-header">Ajouter un client</h5>
            <div class="card-body">
                <form action="{{ route('clients.store') }}" method="POST">
                    @csrf
                    <div class="form-row">
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                            <label>Nom de client <span style="color:red;">*</span></label>
                            <input type="text" class="form-control" name="name" value="{{ old("name") }}" placeholder="nom de client" >
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                            <label>Email <span style="color:red;">*</span></label>
                            <input type="email" class="form-control" name="email" value="{{ old("email") }}" placeholder="email" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                            <label for="validationCustom03">Adresse <span style="color:red;">*</span></label>
                            <input type="text" class="form-control" name="addresse" value="{{ old("addresse") }}" placeholder="adresse" >
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                            <label>Téléphone <span style="color:red;">*</span></label>
                            <input type="text" class="form-control" name="phone" value="{{ old("phone") }}" placeholder="Téléphone" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                            <label for="validationCustom03">ICE :</label>
                            <input type="text" class="form-control" name="ICE" value="{{ old("ICE") }}" placeholder="ICE" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                            <button class="btn btn-primary" type="submit">Valider</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection