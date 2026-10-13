(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
let rec string_xor (a : string) (b : string) : string = 
    (* Get the lengths of both strings *)
    let len_a = String.length a in 
    let len_b = String.length b in 

    (* Check if the lengths are equal *)
    if len_a <> len_b then raise (Invalid_argument "Input strings must have equal lengths");

    (* Perform XOR operation on each character *)
    let result = String.init len_a (fun i -> Char.chr ((Char.code a.[i]) lxor (Char.code b.[i]))) in 
    result

