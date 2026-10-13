let rec string_xor (a : string) (b : string) : string =
    if a = "" || b = "" then
        ""
    else
        let ah = a.[0] = '1'
        let bh = b.[0] = '1'
        let ch = if (ah && not bh) || (not ah && bh) then '1' else '0'
        ch :: string_xor (if a = "" then a else a.[1..]) (if b = "" then b else b.[1..])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
