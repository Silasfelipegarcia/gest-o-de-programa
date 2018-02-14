<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Illuminate\Support\Facades\Auth;

use Illuminate\Http\JsonResponse;

use App\Indicador;
use App\Acao;
use App\Plano;

class IndicadorController extends Controller
{
    /*
     *@var indicador
     */
    private $indicador;
    private $acao;
    private $plano;

    public function __construct(Indicador $indicador,Plano $plano,Acao $acao)
    {
        $this->indicador = $indicador;
        $this->plano = $plano;
    	$this->acao = $acao;
    }

    public function ajaxIndicadorFetchAcoesByPlano(Request $request)
    {
        if(Auth::user()->perfil == 2)
        {
            $acoes = $this->acao->where('plano_id',$request->input('plano_id'))->get();

            if($request->ajax()){
                return response()->json([
                    'acoes' => $acoes
                ]);
            }
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }

    public function cadastraIndicadorView()
    {
        if(Auth::user()->perfil == 2)
        {
        	$planos = $this->plano->orderBy('created_at', 'DESC')->get();
        	return view('indicador.cadastra-indicador',['planos' => $planos]);
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }

    public function listarIndicador()
    {
        if(Auth::user()->perfil == 2)
        {
        	//$usuarios = User::orderBy('created_at','desc')->get();
        	$indicadores = $this->indicador->orderBy('created_at', 'DESC')->get();
        	return view('indicador.listar-indicadores',['indicadores' => $indicadores]);
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }

    public function cadastraIndicador(Request $request)
    {
        if(Auth::user()->perfil == 2)
        {
            $indicador = $this->indicador;

        	$indicador->nome = $request["nome"];
            $indicador->plano_id = intval($request["plano"]);
            $indicador->acao_id = intval($request["acao"]);
            $indicador->meta_1_tri = $request["meta_1_tri"];
            $indicador->meta_2_tri = $request["meta_2_tri"];
            $indicador->meta_3_tri = $request["meta_3_tri"];
            $indicador->meta_4_tri = $request["meta_4_tri"];

            $indicador->created_by = Auth::user()->id;

        	$indicador->save();

        	//Auth::login($user);

        	return redirect()->route('listar-indicadores');
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }

    public function editIndicadorView($id)
    {
        if(Auth::user()->perfil == 2)
        {
        	$indicador = $this->indicador->find($id);
            $acoes = $this->acao->where('plano_id',$indicador->plano->id)->get();
            $planos = $this->plano->orderBy('created_at','DESC')->get();
        	return view('indicador.editar-indicador',['indicador' => $indicador,'planos' => $planos,'acoes' => $acoes]);
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }

    public function editIndicador(Request $request,$id)
    {
        if(Auth::user()->perfil == 2)
        {
        	$indicador = $this->indicador->find($id);

        	$indicador->nome = $request["nome"];
            $indicador->plano_id = intval($request["plano"]);
            $indicador->acao_id = intval($request["acao"]);
            $indicador->meta_1_tri = $request["meta_1_tri"];
            $indicador->meta_2_tri = $request["meta_2_tri"];
            $indicador->meta_3_tri = $request["meta_3_tri"];
            $indicador->meta_4_tri = $request["meta_4_tri"];

            $indicador->changed_by = Auth::user()->id;

        	$indicador->update();

        	return redirect()->route('listar-indicadores');
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }

    public function deleteIndicador($id)
    {
        if(Auth::user()->perfil == 2)
        {
        	$indicador = $this->indicador->find($id);
            $indicador->deleted_by = Auth::user()->id;
            $indicador->update();
        	$indicador->delete();

        	return redirect()->route('listar-indicadores');
        }
        else
        {
            return redirect()->route('dashboard');
        }
    }
}
