# WordPress List Hooks
Generate a list of hooks used in your plugin or theme.

## How to use
1. Let's assume your plugin resides in `wp-content/plugins/example-plugin`. Create a folder named `tasks` at this path: `wp-content/plugins/example-plugin/tasks`. You can do the same for themes.
1. Add `list-hooks.sh` to the tasks folder.
1. Open `list-hooks.sh` and modify the config parameters.
    1. Change `hookPrefix` to the prefix you use for your actions and filters.
    1. Change `output` to modify where the `hooks.txt` file is created. Leave it as it is to generate it in the `tasks` folder.
    1. Change `exclude` to ensure certain fodlers are not included in the search for hooks.
1. Navigate to the `tasks` folder in terminal.
1. Type `bash list-hooks.sh` into terminal and press `enter`.
1. A file named `hooks.txt` will be generated in your `tasks` folder.

## Requirements
* This script uses `ggrep` which you can install using homebrew.
* This script was built for use on a Mac, not sure how well it works on Windows.

## Example
Here's [a doc](https://docs.iconicwp.com/article/196-available-hooks-actions-and-filters) for my [WooCommerce Delivery Slots](https://iconicwp.com/products/woocommerce-delivery-slots/) plugin which I used this script on.

## Contribute
See anything that could be better? Submit an issue, or even better, a PR!
