# lvim

My lunarvim configuration

## Notes about requiring files

Files in `lua/user` can be required with just using `user`:

```lua
-- Example
require("user.keybindings").setup()
```

When opened with <leader> (spacebar) Lc (Lunar -> config), the import will work correctly.
