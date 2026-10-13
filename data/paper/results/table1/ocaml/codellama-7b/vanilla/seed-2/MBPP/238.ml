let rec number_of_substrings (str : string) : int =
  match String.length str with
  | 0 -> 0
  | _ ->
    let empty_str = String.make (String.length str) ' ' in
    let rec aux (i : int) (j : int) (acc : int) : int =
      if i >= j then acc
      else if str.[i] <> str.[j] then aux (i + 1) (j + 1) (acc + 1)
      else aux (i + 1) (j + 1) acc
    in
    aux 0 (String.length empty_str) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
