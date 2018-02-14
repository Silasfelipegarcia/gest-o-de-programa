<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Indicador extends Model
{
    use SoftDeletes;

    protected $table = "indicadores";
    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    public function plano()
    {
         return $this->belongsTo('App\Plano');
    }

    public function acao()
    {
         return $this->belongsTo('App\Acao','acao_id','id');
    }
}
