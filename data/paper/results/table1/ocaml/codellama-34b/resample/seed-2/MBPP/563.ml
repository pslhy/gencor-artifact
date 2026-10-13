(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
let rec extract_values (text : string) : string list =
    let open String in
    match split ~sep:"\"" text with
    | [x; y] -> [y]
    | hd :: tl -> hd :: extract_values (join ~sep:"\"" tl)
    | [] -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:11: Unbound value "split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_values (text : string) : string list =
    let open String in
    match blit ~sep:"\"" text with
    | [x; y] -> [y]
    | hd :: tl -> hd :: extract_values (join ~sep:"\"" tl)
    | [] -> []

