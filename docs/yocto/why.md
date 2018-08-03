## What is Yocto

This is how Yocto Project describes itself:
> The Yocto Project is an open source collaboration project that helps developers
> create custom Linux-based systems for embedded products, regardless of the
> hardware architecture.

The whole project consists of set of tools which includes task execution engine -
BitBake and OpenEmbedded-Core (OE-Core) - a common layer of metadata (i.e.
recipes, classes, and associated files).

## Why Yocto?

We've chosen Yocto as a platform for building images due to extensive amount of
benefits that it can bring to a developer. In the next few paragraphs we'll
describe some of them.

### Layer Infrastructure

Layer infrastructure makes it easy to maintain and scale up the whole project.
It groups related functionality into separate bundles. Using layers to isolate
and group functionality reduces project complexity and redundancy, allows you to
easily extend the system, make customizations, and keep functionality organized.

### Industry and community support

Yocto Project supports Intel, ARM, MIPS, AMD, PPC and other architectures thanks
to semiconductor, operating system, software, and service vendors who adopt their
products and services to the Yocto Project.

### Tools and SDK

Apart from execution engine and reference distribution, Yocto Project includes
recipes to build a fully functional toolchain as part of your project build.

### Supports Partial Builds

You can build and rebuild individual packages as needed with Shared State Cache
mechanism implemented that can determine which parts do not need to be rebuilt.

## Where to go next

If you can't wait to try Yocto Project in action, you can check out [our tutorial](tutorial.md)
to start building your own Linux OS. You can also read [Project Mega-Manual](https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html)
to get more advanced understanding of BitBake, reference distribution (Poky)
and Yocto Project concepts.
