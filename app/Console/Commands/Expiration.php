<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\User;

class Expiration extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'user:expiration';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('User expiration command started.');

    $users = User::where('expired', 1)->get();
    
    $this->info('Found ' . count($users) . ' users to update.');

    foreach ($users as $row) {
        $row->update(['expired' => 0]);
    }

    $this->info('User expiration command completed.');
    }
}
