<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends MinkContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @Given I wait :arg1 seconds
     */
    public function iWaitSeconds($arg1)
    {
        $session = $this->getSession()->wait($arg1);
    }

    /**
     * @Given I press :arg1
     */
    public function iPress($ClientLogin)
    {
		#echo "Current URL: ". $this->getSession()->getCurrentUrl() . "\n";
        $session = $this->getSession();
		$selectorsHandler = $session->getSelectorsHandler();
		#$element = $session->getPage()->find('css', '#header .div .div .div .header-line-login .div .a .span');
		$xpath = '//*[@id="header"]/div/div/div[3]/div/a/span';
		#$element = $session->getPage()->find('named', array('link', $selectorsHandler->xpathLiteral('//*[@id="header"]/div/div/div[3]/div/a/span')));
		$element = $session->getPage()->find(
			'xpath',
			$session->getSelectorsHandler()->selectorToXpath('xpath', '//*[@id="header"]/div/div/div[3]/div/a/span'));
		echo "The link href is: ". $element->getAttribute('href') . "\n";
        if (null === $element) {
            throw new \InvalidArgumentException(sprintf('Could not evaluate: "%s"', $element));
        } 
        $element->click();
    }

    /**
     * @Then I should see :arg1
     */
    public function iShouldSee($arg1)
    {
        throw new PendingException();
    }

    /**
     * @Given I am on the :arg1
     */
    public function iAmOnThe($arg1)
    {
        $session = $this->getSession()->visit($arg1);
		
    }
}
