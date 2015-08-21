xquery version "3.1";

(:~
 : Non-standard extension functions, mainly used for the documentation.
 :)
module namespace pmf="http://www.tei-c.org/tei-simple/xquery/ext-polymer";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare function pmf:persName($config as map(*), $node as element(), $class as xs:string, $content as node()*, $corresp) {
    <tei-persName corresp="{$corresp}" name="{normalize-space($content)}">{$config?apply-children($config, $node, $content)}</tei-persName>
};