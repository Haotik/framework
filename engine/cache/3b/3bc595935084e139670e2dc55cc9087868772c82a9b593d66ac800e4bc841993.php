<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* autorisation.twig */
class __TwigTemplate_d17278808c4f2feb14b00adbdbffdad120156cc8f49dc210eb9b2189305952ec extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<form action=\"#\" method=\"post\" class=\"autorisation\">
    <input type=\"text\" placeholder=\"Login\" required name=\"login\" class=\"login\"> <br>
    <input type=\"password\" placeholder=\"password\" required name=\"password\" class=\"pass\"> <br>
    <input type=\"submit\" value=\"LogIn\">
</form>";
    }

    public function getTemplateName()
    {
        return "autorisation.twig";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "autorisation.twig", "/media/andrey/_dde_data/projekts/portfolio/templates/autorisation.twig");
    }
}
