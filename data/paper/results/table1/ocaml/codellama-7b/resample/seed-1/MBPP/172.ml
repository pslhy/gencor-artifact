(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
let rec count_occurance (s : string) : int =
    let pos = String.index_opt s 'std' in
    match pos with
    | None -> 0
    | Some pos -> 1 + count_occurance (String.sub s (pos + 1) (String.length s - pos - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_occurance (s : string) : int =
  match String.index_opt s 'std' with
  | None -> 0
  | Some pos -> 1 + count_occurance (String.sub s (pos + 1) (String.length s - pos - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_occurance (s : string) : int =
  match s.[0] with
  | 's' -> 1 + count_occurance (String.sub s 1 (String.length s - 1))
  | _ -> 0

