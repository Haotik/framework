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

/* base.twig */
class __TwigTemplate_7bc8b672d3c3afdf8a955e2a4ba85f0cef1981431292b4140ba43e6c03afe46c extends \Twig\Template
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
        echo "<!DOCTYPE html>
<head>
  <meta charset=\"UTF-8\">
    <link rel=\"stylesheet\" href=\"/css/main.css\">
  <title>";
        // line 5
        echo twig_escape_filter($this->env, ($context["title"] ?? null), "html", null, true);
        echo "</title>
</head>
";
        // line 8
        echo "<body>
    <header>
        ";
        // line 10
        $this->loadTemplate("nav.twig", "base.twig", 10)->display($context);
        // line 11
        echo "    </header>
    ";
        // line 12
        if ((twig_length_filter($this->env, ($context["error"] ?? null)) > 0)) {
            // line 13
            echo "        ";
            $this->loadTemplate("error.twig", "base.twig", 13)->display($context);
            // line 14
            echo "    ";
        }
        // line 15
        echo "    <div class=\"container\">
        ";
        // line 16
        echo ($context["content"] ?? null);
        echo "
    </div>
    <footer>
        ";
        // line 19
        $this->loadTemplate("footer.twig", "base.twig", 19)->display($context);
        // line 20
        echo "    </footer>
</body>
";
    }

    public function getTemplateName()
    {
        return "base.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  76 => 20,  74 => 19,  68 => 16,  65 => 15,  62 => 14,  59 => 13,  57 => 12,  54 => 11,  52 => 10,  48 => 8,  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "base.twig", "/media/andrey/_dde_data/projekts/portfolio/templates/base.twig");
    }
}
