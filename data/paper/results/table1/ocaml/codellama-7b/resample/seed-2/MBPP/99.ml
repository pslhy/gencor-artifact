(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
let rec decimal_to_binary (n : int) : string =
  match n with
  | 0 -> "0"
  | _ ->
    let rem = n mod 2 in
    let quo = n / 2 in
    decimal_to_binary quo ^ strem

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:29: Unbound value "strem" *)
(*     Hint: Did you mean "rem"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
  match n with
  | 0 -> "0"
  | _ ->
     let rem = n mod 2 in
     let quo = n / 2 in
     decimal_to_binary quo ^ rem

