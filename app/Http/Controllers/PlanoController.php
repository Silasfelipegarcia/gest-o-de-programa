<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests;

use App\Plano;
use App\Cg;
use App\Objeto;
use App\Os;
use App\TipoObjeto;
use App\Uge;
use DateTime;

class PlanoController extends Controller
{
	/*
	 *@var plano, @var cgs, @var objetos, @var oss, @var tipoobjetos, @var uges
	 */
	private $plano;
	private $cg;
	private $objeto;
	private $os;
	private $tipoobjeto;
	private $uge;


	public function __construct(Plano $plano, Cg $cg, Objeto $objeto, Os $os, TipoObjeto $tipoobjeto, Uge $uge)
	{
		$this->plano = $plano;
		$this->cg = $cg;
		$this->objeto = $objeto;
		$this->os = $os;
		$this->tipoobjeto = $tipoobjeto;
		$this->uge = $uge;
	}

	public function cadastraPlanoView()
	{
		$cgs = $this->cg->orderBy('created_at', 'DESC')->get();
		$objetos = $this->objeto->orderBy('created_at', 'DESC')->get();
		$oss = $this->os->orderBy('created_at', 'DESC')->get();
		$tipoobjetos = $this->tipoobjeto->orderBy('created_at', 'DESC')->get();
		$uges = $this->uge->orderBy('created_at', 'DESC')->get();
		return view('plano.cadastra-plano',['cgs' => $cgs,'objetos' => $objetos,'oss' => $oss,'tipoobjetos' => $tipoobjetos,'uges' => $uges]);
	}

	public function listarPlano()
	{
		if(Auth::user()->perfil == 2)
		{
			//$usuarios = User::orderBy('created_at','desc')->get();
			$planos = $this->plano->orderBy('created_at', 'DESC')->get();
			//transforma formato da data para o brazuka para mostrar na view
			foreach ($planos as $plano) {
			 $date = DateTime::createFromFormat("Y-m-d H:i:s",$plano->data_limite);
			 $plano->data_limite = $date->format('d/m/Y');   
			}
			return view('plano.lista-planos',['planos' => $planos]);
		}
		else
		{
			return redirect()->route('dashboard');
		}
	}

	public function cadastraPlano(Request $request)
	{
		if(Auth::user()->perfil == 2)
		{
		    $planos = $this->plano;

			$planos->nome = $request["nome"];
			$planos->uge_id = intval($request["uge"]);
			$planos->cg_id = intval($request["cg"]);
			$planos->objeto_id = intval($request["objeto"]);
			$planos->os_id = intval($request["os"]);
			$planos->tipoobjeto_id = intval($request["tipo_objeto"]);

			$date = DateTime::createFromFormat('d/m/Y',$request["data_limite"]);
			
	    	$planos->data_limite = $date->format("Y-m-d H:i:s");

		    $planos->created_by = Auth::user()->id;

			$planos->save();

			//Auth::login($user);

			return redirect()->route('listar-planos');
		}
		else
		{
			return redirect()->route('dashboard');
		}
	}

	public function editPlanoView($id)
	{
		if(Auth::user()->perfil == 2)
		{
			$plano = $this->plano->find($id);

			//transforma formato da data para o brazuka para mostrar na view
	        $date = DateTime::createFromFormat("Y-m-d H:i:s",$plano->data_limite);
	        $plano->data_limite = $date->format('d/m/Y');

			$cgs = $this->cg->orderBy('created_at', 'DESC')->get();
			$objetos = $this->objeto->orderBy('created_at', 'DESC')->get();
			$oss = $this->os->orderBy('created_at', 'DESC')->get();
			$tipoobjetos = $this->tipoobjeto->orderBy('created_at', 'DESC')->get();
			$uges = $this->uge->orderBy('created_at', 'DESC')->get();
			
			return view('plano.editar-planos',['plano' => $plano,'cgs' => $cgs,'objetos' => $objetos,'oss' => $oss,'tipoobjetos' => $tipoobjetos,'uges' => $uges]);
		}
		else
		{
			return redirect()->route('dashboard');
		}
	}

	public function editPlano(Request $request,$id)
	{
		if(Auth::user()->perfil == 2)
		{
			$plano = $this->plano->find($id);

			$plano->nome = $request["nome"];
			$plano->uge_id = $request["uge"];
			$plano->cg_id = $request["cg"];
			$plano->objeto_id = $request["objeto"];
			$plano->os_id = $request["os"];
			$plano->tipoobjeto_id = $request["tipo_objeto"];

			$date = DateTime::createFromFormat('d/m/Y',$request["data_limite"]);
			
	    	$plano->data_limite = $date->format("Y-m-d H:i:s");

		    $plano->changed_by = Auth::user()->id;

			$plano->update();

			return redirect()->route('listar-planos');
		}
		else
		{
			return redirect()->route('dashboard');
		}
	}

	public function deletePlano($id)
	{
		if(Auth::user()->perfil == 2)
		{
			$plano = $this->plano->find($id);
		    $plano->deleted_by = Auth::user()->id;
		    $plano->update();
			$plano->delete();

			return redirect()->route('listar-planos');
		}
		else
		{
			return redirect()->route('dashboard');
		}
	}
}
