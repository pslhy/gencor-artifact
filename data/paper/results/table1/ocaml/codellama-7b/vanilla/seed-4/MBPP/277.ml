let rec dict_filter (dict : (string * int) list) (n : int) : (string * int) list =
  match dict with
  | [] -> []
  | (k, v) :: t ->
    if v >= n then
      (k, v) :: dict_filter t n
    else
      dict_filter t n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in an association list and integer n and filters the association list to only include entries with values greater than or equal to n. *)
