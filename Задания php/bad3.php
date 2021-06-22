<?php
    class Rectangle
    {
        public $width;
        public $height;

        public function cord($m, $n)
        {
            $this->width=$m;
            $this->height=$n;
        }
        public function Area()
        {
            return $this->width * $this->height;
        }
    }

    class Circle 
    {
        public $radius;
    
        public function cord($r)
        {
            $this->radius = $r;
        }
        public function Area()
        {
            return pi() * pow($this->radius, 2);
        }
    }

    class Triangle
    {
        public $a;
        public $b;
        public $c;
    
        public function cord($a, $b, $c)
        {
            $this->a = $a;
            $this->b = $b;
            $this->c = $c;
        }
        public function Area()
        {
            $p=($this->a+$this->b+$this->c)/2;      
            $s=sqrt($p*($p-$this->a)*($p-$this->b)*($p-$this->c));
            return $s;
        }
    }
$fp=fopen("data.json", "w");
$Rectangle = new Rectangle();
$Circle = new Circle();
$Triangle = new Triangle();
echo $A = $Rectangle->width=mt_rand(1,100);
echo $B = $Rectangle->height=mt_rand(1,100);
echo $Sr = $Rectangle->Area($A,$B);
echo $R = $Circle->radius=mt_rand(1,100);
echo $Sc = $Circle->Area($R);
echo $AT = $Triangle->a=mt_rand(1,100);
echo $BT = $Triangle->b=mt_rand(1,100);
echo $CT = $Triangle->c=mt_rand(1,100);
echo $St = $Triangle->Area($AT,$BT,$CT);

$array = Array (
    "0" => Array (
        "type" => "rectangle",
        "a" => $A,
        "b" => $B,
        "s" => $Sr
    ),
    "1" => Array (
        "type" => "circle",
        "r" => $R,
        "s" => $Sc
    ),
    "2" => Array (
        "type" => "triangle",
        "a" => $AT,
        "b" => $BT,
        "c" => $CT,
        "s" => $St
    )
);
fclose("$fp");
$json = json_encode($array);
if (file_put_contents("data.json", $json))
$path = file_get_contents("data.json");
$json = json_decode($path,true);

/*for($i=0;$i<count($json);$i++) {
    switch ($json[$i]['type']) {
        case "rectangle":
            $figure = Rectangle($json[$i]['a'],$json[$i]['b']);
            break;
        case "rectangle":
            $figure = Circle($json[$i]['r']);
            break;
        case "triangle":
            $figure = Triangle($json[$i]['a'], $json[$i]['b'], $json[$i]['c']);
            break;
    }
    $json[$i]['s'] = $figure->Area();
}

usort($json, function($a, $b) {
    if($a['s'] === $b['s'])
        return 0;        
    return $a['s'] < $b['s'] ? 1 :-1;
});

for($i=0;$i<count($json);$i++) {
    switch ($json[$i]['type']) {
        case "rectangle":
            echo "rectangle. a=".$json[$i]['a'].", b=".$json[$i]['b'].". Area:\n".$json[$i]['s']."</br>";
            break;
            case "circle":
            echo "circle. r=".$json[$i]['r'].". Area:\n".$json[$i]['s']."</br>";
            break;
        case "triangle":
            echo "triangle. a=".$json[$i]['a'].", b=".$json[$i]['b'].", c=".$json[$i]['c'].". Area:\n".$json[$i]['s']."</br>";
            break;
    }
}*/

?>