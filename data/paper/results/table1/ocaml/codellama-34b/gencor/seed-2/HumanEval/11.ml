
let rec string_xor (a : string) (b : string) : string =
    match a, b with
    | "", "" -> ""
    | a, "" -> string_xor a "0"
    | "", b -> string_xor "0" b
    | a, b ->
        let c = string_xor (a.[0] ^ b.[0]) "0" in
        c ^ string_xor (a.[1..(String.length a - 1)]) (b.[1..(String.length b - 1)])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
