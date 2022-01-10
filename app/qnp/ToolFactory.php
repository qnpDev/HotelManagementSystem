<?php
namespace App\qnp;

class ToolFactory {
    public function getThumbnail($filename, $suffix = '_thumb') {
        if ($filename) {
            return preg_replace("/(.*)\.(.*)/i", "$1{$suffix}.$2", $filename);
        }
        return '';
    }

    public function getCurrencyVN($number, $symbol = 'VND', $isPrefix = false) {
        if ($isPrefix) {
            return $symbol . number_format($number, 0, ',', '.');
        } else {
            return number_format($number, 0, ',', '.') . $symbol;
        }
    }
}