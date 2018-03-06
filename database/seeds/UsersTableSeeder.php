<?php

use App\Models\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = factory(User::class)->times(50)->make();
        User::insert($users->makeVisible(['password', 'remember_token'])->toArray());

        $user            = User::find(1);
        $user->name      = '小哥就是闷闷闷油瓶';
        $user->email     = 'xiaogezz@foxmail.com';
        $user->password  = bcrypt('1995513');
        $user->is_admin  = true;
        $user->activated = true;
        $user->save();
    }
}
