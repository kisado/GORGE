structure RCST :> RCST = struct
  datatype rcst = IntConstant of int
                | StringConstant of string
                | Symbol of Symbol.symbol
                | Keyword of Module.symbol_name
                | List of rcst list

  fun resolve _ _ (CST.IntConstant i) = IntConstant
    | resolve _ _ _ = raise Fail "NOT IMPLEMENTED"
end
