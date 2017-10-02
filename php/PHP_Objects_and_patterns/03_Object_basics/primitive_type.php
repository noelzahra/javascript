<?php

class AddressManager
{
    private $addresses = ["209.131.36.159". "216,58.122.174" ];


    public function outputAddress($resolve)
    {
        $resolve = true;

        foreach ($this->$addreses as $address)
        {
            print $address;
            if ($resolve) {
                print (".getHostbyAddr($address)")
            }
        }
    }
}