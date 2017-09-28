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
        $session = $this->getSession();
		$element = $session->getPage()->find('named', array('link', $ClientLogin));
		#$element = $session->getPage()->findLink($ClientLogin);
        if (null === $element) {
            throw new \InvalidArgumentException(sprintf('Could not evaluate: "%s"', $ClientLogin));
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
