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

/* nav.twig */
class __TwigTemplate_0a20df090848bc898db8193403c7b981e598055d3fb6f76ff8bf1b38e1f6eec7 extends \Twig\Template
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
        echo "<div class=\"header_logo\">
    Логотип
</div>
<div class=\"header_nav\">
    <span class=\"header_greating\">
        ";
        // line 6
        echo twig_escape_filter($this->env, ($context["greating"] ?? null), "html", null, true);
        echo "
        <form action=\"#\" method=\"post\">
            <input type=\"submit\" value=\"";
        // line 8
        echo twig_escape_filter($this->env, ($context["login"] ?? null), "html", null, true);
        echo "\" name=\"flag\">
        </form>
    </span>
    <br>
  <a href=\"#\" class=\"header_nav_item\">1</a>
  <a href=\"#\" class=\"header_nav_item\">4</a>
  <a href=\"#\" class=\"header_nav_item\">3</a>
  <a href=\"#\" class=\"header_nav_item\">2</a>
</div>";
    }

    public function getTemplateName()
    {
        return "nav.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  49 => 8,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "nav.twig", "/media/andrey/_dde_data/projekts/portfolio/templates/nav.twig");
    }
}
