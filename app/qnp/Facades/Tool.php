<?php
namespace App\qnp\Facades;
use App\qnp\ToolFactory;
use Illuminate\Support\Facades\Facade;

class Tool extends Facade {
    protected static function getFacadeAccessor() {
        return ToolFactory::class;
    }
}