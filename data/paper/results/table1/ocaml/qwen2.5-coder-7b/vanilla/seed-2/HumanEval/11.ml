let rec string_xor (a : string) (b : string) : string = 
    let rec xor_helper (sa : string) (sb : string) (acc : string) : string = 
        match sa, sb with
        | "", "" -> acc
        | a::asa, b::bsb -> xor_helper asa bsb (acc ^ (if a = b then "0" else "1"))
        | _ -> failwith "Input strings must be of the same length"
    in
    xor_helper a b ""

(* Test case *)
let _ = assert (string_xor "010" "110" = "100")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
