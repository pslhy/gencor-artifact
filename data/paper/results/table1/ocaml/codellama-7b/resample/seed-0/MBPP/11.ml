(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" || ch = "" then s else
    let first_occur = String.index_exn s ch in
    let last_occur = String.rindex_exn s ch in
    let str_first_occur = String.sub s 0 (first_occur + 1) in
    let str_last_occur = String.sub s (last_occur - String.length ch + 1) (String.length s - last_occur) in
    remove_Occ str_first_occur ch ^ remove_Occ str_last_occur ch

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:23: Unbound value "String.index_exn" *)
(*     Hint: Did you mean "index_opt"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if s = "" || ch = "" then s else
    match String.index_opt s ch with
    | Some index ->
        let str_first_occur = String.sub s 0 index in
        let str_last_occur = String.sub s (index + 1) (String.length s - index - 1) in
        str_first_occur ^ remove_Occ str_last_occur ch
    | None -> s

