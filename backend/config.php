<?php
return [
    'modules' => [
        'category' => [
            'class' => 'backend\modules\category\category',
        ],
        'device' => [
            'class' => 'backend\modules\device\device',
        ],
        'brand' => [
            'class' => 'backend\modules\brand\brand',
        ],
        'product' => [
            'class' => 'backend\modules\product\product',
        ],
        'content' => [
            'class' => 'backend\modules\content\content',
        ],
        'field' => [
            'class' => 'backend\modules\field\field',
        ],
        'user' => [
            'class' => 'backend\modules\user\user',
        ],
        'message' => [
            'class' => 'backend\modules\message\message',
        ],
        'file' => [
            'class' => 'backend\modules\file\Module',
        ],
        'payment' => [
            'class' => 'backend\modules\payment\payment',
        ],
        'shipping' => [
            'class' => 'backend\modules\shipping\shipping',
        ],
    ],
    'globalComponents' => [
        'filterRegistry' => [
            'class' => 'backend\rest\component\query\FilterRegistry',
            'filters' => [
                'eq' => 'backend\rest\component\query\filters\Equals',
                'gt' => 'backend\rest\component\query\filters\GreaterThan',
                'gte' => 'backend\rest\component\query\filters\GreaterThanOrEquals',
                'between' => 'backend\rest\component\query\filters\Between',
                'in' => 'backend\rest\component\query\filters\In',
                'isnull' => 'backend\rest\component\query\filters\IsNull',
                'lt' => 'backend\rest\component\query\filters\LessThan',
                'lte' => 'backend\rest\component\query\filters\LessThanOrEquals',
                'like' => 'backend\rest\component\query\filters\Like',
                'HasMany' => 'backend\rest\component\query\filters\HasMany',
                'neq' => 'backend\rest\component\query\filters\NotEquals',
                'notin' => 'backend\rest\component\query\filters\NotIn',
//                'tags' => 'backend\modules\taggable\query\filters\Tags',
            ]
        ],
        'filterManager' => [
            'class' => 'backend\rest\component\query\FilterManager'
        ]
    ]
];