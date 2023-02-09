local M = {}

function M.prime(c)
  return {
    TroubleNormal = { background = c.black:darken(2) },
  }
end

return M
