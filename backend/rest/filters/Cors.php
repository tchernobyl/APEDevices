<?php
/**
 * @version    Cors.php 0.1
 * @package    backend\rest\filters
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\filters;


class Cors extends \yii\filters\Cors
{
    /**
     * @var array Basic headers handled for the CORS requests.
     */
    public $cors = [
        'Origin' => ['*'],
        'Access-Control-Request-Method' => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', 'OPTIONS'],
        'Access-Control-Request-Headers' => ['*'],
        'Access-Control-Allow-Credentials' => null,
        'Access-Control-Max-Age' => 86400,
        'Access-Control-Expose-Headers' => ['*'],
        'Access-Control-Allow-Headers' => ['*']
    ];


    /**
     * For each CORS headers create the specific response
     * @param array $requestHeaders CORS headers we have detected
     * @return array CORS headers ready to be sent
     */
    public function prepareHeaders($requestHeaders)
    {
        $responseHeaders = [];
        // handle Origin
        if (isset($requestHeaders['Origin'])) {
            if ((in_array('*', $this->cors['Origin']) === true)
                || (in_array($requestHeaders['Origin'], $this->cors['Origin']))
            ) {
                $responseHeaders['Access-Control-Allow-Origin'] = $requestHeaders['Origin'];
            }
        }


        $this->prepareAllowHeaders('Headers', $requestHeaders, $responseHeaders);

        if (isset($requestHeaders['Access-Control-Request-Method'])) {
            $responseHeaders['Access-Control-Allow-Methods'] = implode(
                ', ',
                $this->cors['Access-Control-Request-Method']
            );
        }

        if ($this->cors['Access-Control-Allow-Credentials'] === true) {
            $responseHeaders['Access-Control-Allow-Credentials'] = 'true';
        } elseif ($this->cors['Access-Control-Allow-Credentials'] === false) {
            $responseHeaders['Access-Control-Allow-Credentials'] = 'false';
        }

        $responseHeaders['Access-Control-Expose-Headers'] = implode(', ', $this->cors['Access-Control-Expose-Headers']);
        $responseHeaders['Access-Control-Allow-Headers'] = implode(', ', $this->cors['Access-Control-Allow-Headers']);

        if (($_SERVER['REQUEST_METHOD'] === 'OPTIONS') && ($this->cors['Access-Control-Max-Age'] !== null)) {
            $responseHeaders['Access-Control-Max-Age'] = $this->cors['Access-Control-Max-Age'];
        }

        return $responseHeaders;
    }
}