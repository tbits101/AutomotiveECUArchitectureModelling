# Ruby on Replit

This is a template to get you started with Ruby on Replit. It's ready to go so you can just hit run and start coding!

## Running the repl

Simply hit run! You can edit the run command from the `.replit` file.

## Installing packages

To add packages to your repl, we recommend using the Replit packager interface in the left sidebar or using `bundle install` in the shell. Check out the [Bundle docs here](https://bundler.io/v2.3/#getting-started).

**Warning: Avoid using `gem install` to add packages.**

Beacuse Ruby repls use [Bundle](https://bundler.io/) under the hood to provide a consistent environment that tracks and installs the exact gems and versions needed, we recommend using `bundle install` instead of `gem install`, which may not work as expected.

## Help

If you need help you might be able to find an answer on our [docs](https://docs.replit.com) page. Feel free to report bugs and give us feedback [here](https://replit.com/support).


## Automotive ECU Architecture Modelling

This library helps developing the architecture for an Automotive ECU.

The development of Automotive ECU is done accordingi to international standards like Automotive SPICE, and in many cases safety standards like ISO 26262.

The development of Automotive ECU involves the Architectural Design.

For developing Architectural Design, in general modelling languages like SysML or UML are used.

The inconvenient of using graphical modelling tools is that typically they are quite time consuming to enter the information, and in many cases not easy to understand. Additionally, these languages are general purpose and in many cases different engineers use different elements to represent the ECU system.

This makes that going from one project to a different one, it is not probable that the two projects used a consistent modelling guideline and structure.

This library proposes a different way of modelling architecture by using textual modelling and defining a clear structure.

This library provides:

- Clear structure to place information in a consistent way.
- DSL for Automotive ECU to specify from System, Hardware and SW perspective
- Checkers to ensure both model consistency
- Generators for Diagrams and documentation.