<?php

use Faker\Generator as Faker;
use App\User;

$factory->define(App\Model\Product::class, function (Faker $faker) {
    return [
        'name'=> $faker->word,
        'detail'=> $faker->paragraph,
        'price'=> $faker->numberBetween(100,5000),
        'stock'=> $faker->randomDigit,
        'discount'=> $faker->numberBetween(20,30),
        'user_id'=> function(){
        	return App\User::all()->random();
        }

    ];
});
