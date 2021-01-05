<?php
    function encrypt($str) {
        $res = "";
        for ($i = 0 ; $i < strlen($str) ; $i++){
            if(ord($str[$i]) % 2 == 0){
                $res .= chr(ord($str[$i]) + 2);
                $res .= chr(mt_rand(32, 126)); 
            } else {
                $res .= chr(ord($str[$i]) - 2);
                $res .= chr(mt_rand(32, 126));
            }
        }
        return $res;
    }

    function decrypt($str) {
        $res = "";
        for ($i = 0 ; $i < strlen($str) ; $i++){
            if ($i%2 == 0) {
                if (ord($str[$i]) % 2 == 0) {
                    $res .= chr(ord($str[$i]) - 2);
                } else {
                    $res .= chr(ord($str[$i]) + 2);
                }
            }
        }
        return $res;
    }