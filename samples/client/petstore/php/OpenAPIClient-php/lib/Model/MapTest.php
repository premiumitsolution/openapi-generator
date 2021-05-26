<?php
/**
 * MapTest
 *
 * PHP version 7.2
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.2.0-PITS-3
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * MapTest Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class MapTest implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'MapTest';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'map_map_of_string' => 'array<string,array<string,string>>',
        'map_of_enum_string' => 'array<string,string>',
        'direct_map' => 'array<string,bool>',
        'indirect_map' => 'array<string,bool>'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'map_map_of_string' => null,
        'map_of_enum_string' => null,
        'direct_map' => null,
        'indirect_map' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'map_map_of_string' => 'map_map_of_string',
        'map_of_enum_string' => 'map_of_enum_string',
        'direct_map' => 'direct_map',
        'indirect_map' => 'indirect_map'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'map_map_of_string' => 'setMapMapOfString',
        'map_of_enum_string' => 'setMapOfEnumString',
        'direct_map' => 'setDirectMap',
        'indirect_map' => 'setIndirectMap'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'map_map_of_string' => 'getMapMapOfString',
        'map_of_enum_string' => 'getMapOfEnumString',
        'direct_map' => 'getDirectMap',
        'indirect_map' => 'getIndirectMap'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    const MAP_OF_ENUM_STRING_UPPER = 'UPPER';
    const MAP_OF_ENUM_STRING_LOWER = 'lower';

    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getMapOfEnumStringAllowableValues()
    {
        return [
            self::MAP_OF_ENUM_STRING_UPPER,
            self::MAP_OF_ENUM_STRING_LOWER,
        ];
    }

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['map_map_of_string'] = $data['map_map_of_string'] ?? null;
        $this->container['map_of_enum_string'] = $data['map_of_enum_string'] ?? null;
        $this->container['direct_map'] = $data['direct_map'] ?? null;
        $this->container['indirect_map'] = $data['indirect_map'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets map_map_of_string
     *
     * @return array<string,array<string,string>>|null
     */
    public function getMapMapOfString()
    {
        return $this->container['map_map_of_string'];
    }

    /**
     * Sets map_map_of_string
     *
     * @param array<string,array<string,string>>|null $map_map_of_string map_map_of_string
     *
     * @return self
     */
    public function setMapMapOfString($map_map_of_string)
    {
        $this->container['map_map_of_string'] = $map_map_of_string;

        return $this;
    }

    /**
     * Gets map_of_enum_string
     *
     * @return array<string,string>|null
     */
    public function getMapOfEnumString()
    {
        return $this->container['map_of_enum_string'];
    }

    /**
     * Sets map_of_enum_string
     *
     * @param array<string,string>|null $map_of_enum_string map_of_enum_string
     *
     * @return self
     */
    public function setMapOfEnumString($map_of_enum_string)
    {
        $allowedValues = $this->getMapOfEnumStringAllowableValues();
        if (!is_null($map_of_enum_string) && array_diff($map_of_enum_string, $allowedValues)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value for 'map_of_enum_string', must be one of '%s'",
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['map_of_enum_string'] = $map_of_enum_string;

        return $this;
    }

    /**
     * Gets direct_map
     *
     * @return array<string,bool>|null
     */
    public function getDirectMap()
    {
        return $this->container['direct_map'];
    }

    /**
     * Sets direct_map
     *
     * @param array<string,bool>|null $direct_map direct_map
     *
     * @return self
     */
    public function setDirectMap($direct_map)
    {
        $this->container['direct_map'] = $direct_map;

        return $this;
    }

    /**
     * Gets indirect_map
     *
     * @return array<string,bool>|null
     */
    public function getIndirectMap()
    {
        return $this->container['indirect_map'];
    }

    /**
     * Sets indirect_map
     *
     * @param array<string,bool>|null $indirect_map indirect_map
     *
     * @return self
     */
    public function setIndirectMap($indirect_map)
    {
        $this->container['indirect_map'] = $indirect_map;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


