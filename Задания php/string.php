<?php
    function CamelCaseHM($string)
    {
        $pattern = '/[-_]/';
        $array = preg_split($pattern, $string);
        //echo print_r($array,1);
        $n=count($array);
            for ($i = 1; $i < $n; $i++) {
                $new[$i]=ucwords($array[$i]);
                                        }
        //echo implode($new);
        $result = $array[0] . implode($new);
        echo $result;
    }
    echo(CamelCaseHM("get-books-count\n"));
    echo(CamelCaseHM("Set_Currency_Value"));
?>