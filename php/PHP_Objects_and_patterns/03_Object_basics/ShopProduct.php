<?php

class ShopProduct
{
    private $title;
    private $productName;
    private $productBrand;
    private $price;

    public function  __construct
    (
        $tempTitle,
        $tempProductName,
        $temProductBrand,
        $tempPrice
    )
    {
        $this->title = $tempTitle;
        $this->productName = $tempProductName;
        $this->productBrand = $temProductBrand;
        $this->price= $tempPrice;
    }

    public function getName()
    {
        return $this->title . " is the new " . $this->productName . " from " . $this->productBrand;
    }

    public function getPrice()
    {
        return $this->price;
    }
}

//$shoe = new ShopProduct("Running flats", "Type 6A", "Saucony", 80);
//echo $shoe->getName().PHP_EOL;
//echo is_object($shoe);