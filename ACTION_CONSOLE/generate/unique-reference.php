<?php

namespace Action\Console\Generate;

use AW\Action;

class UniqueReference extends Action
{
    public function cli()
    {
        $output			 = [
            'date'		 => date('Y-m-d H:i:s'),
            'module'	 => 'generate/unique-reference',
            'todo'		 => 0,
            'created'	 => 0
        ];
        var_dump($output);

        $output['todo'] = 50000 - \AW\UniqueReference::findCount([
            'module'    =>  NULL
            ]);
        for ($i = 0; $i < $output['todo']; $i++){
            $reference = new \AW\UniqueReference();
            $reference->token = \LT\Security\UUID::gen();

            if($reference->save() !== FALSE) {
                $output['created']++;
            }
        }

        \LT\Logger::dump($output);

    }
}