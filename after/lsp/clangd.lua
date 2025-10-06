return {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  init_options = {
    fallbackFlags = { "-std=c11", "-std=c++17" },
  },
}
