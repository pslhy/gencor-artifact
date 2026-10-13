
let rec string_xor (a : string) (b : string) : string =
    let acc = ref "" in
    let a = String.to_seq a in
    let b = String.to_seq b in
    let a = Seq.map (fun c -> c = '1') a in
    let b = Seq.map (fun c -> c = '1') b in
    let xor = Seq.map2 (fun a b -> string_of_bool (a <> b)) a b in
    Seq.iter (fun c -> acc := !acc ^ string_of_bool c) xor;
    !acc

let string_xor a b =
    if String.length a <> String.length b then
        invalid_arg "strings of different lengths"
    else
        string_xor a b

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
