
let rec string_xor (a : string) (b : string) : string =
    if a = "" || b = "" then
        ""
    else
        let ah = a.[0] = '1'
        and bh = b.[0] = '1'
        in
        if ah = bh then
            string_xor [ah] @ string_xor ( if a.[1] = '1' then "0" else "1") (b.[1] = '1' )
        else
            "0" @ string_xor (ah)  ( if a.[1] = '1' then "0" else "1") ( if b.[1] = '1' then "0" else "1" )
let () =
    print_endline (string_xor "010" "110")

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
