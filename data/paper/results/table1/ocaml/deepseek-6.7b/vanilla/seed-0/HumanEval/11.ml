let rec string_xor (a : string) (b : string) : string =
    if a = "" then b
    else
        String.make 1 (Char.chr ((Char.code (String.get a 0) lxor Char.code (String.get b 0)) + '0')) ^ string_xor (String.sub a 1 (String.length a - 1)) (String.sub b 1 (String.length b - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
