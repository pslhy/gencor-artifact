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
    let acc = ref "" in
    let a = String.to_list a in
    let b = String.to_list b in
    let rec aux a b =
        match a, b with
        | [], [] -> !acc
        | x :: a, y :: b ->
            let c = (x = y) in
            acc := (!acc ^ (string_of_bool c));
            aux a b
        | _, _ -> assert false
    in
    aux a b;
    !acc

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_xor (a : string) (b : string) : string =
  let acc = ref "" in
  let a = Bytes.to_string (Bytes.of_string a) in
  let b = Bytes.to_string (Bytes.of_string b) in
  let rec aux a b =
    match a, b with
    | [], [] -> !acc
    | x :: a, y :: b ->
        let c = (x = y) in
        acc := (!acc ^ (string_of_bool c));
        aux a b
    | _, _ -> assert false
  in
  aux a b;
  !acc

