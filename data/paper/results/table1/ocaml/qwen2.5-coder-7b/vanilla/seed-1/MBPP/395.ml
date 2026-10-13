let rec first_non_repeating_character (str1 : string) : string option = 
  let rec check (str: string) (count: (char, int) Hashtbl.t) : char option =
    match str with
    | "" -> None
    | s -> 
      let ch = s.[0] in
      if Hashtbl.mem count ch then
        check (String.sub s 1 (String.length s - 1)) count
      else if String.index_opt s ch = Some 0 && String.index_opt s ch = Some (String.length s - 1) then
        Some ch
      else
        check (String.sub s 1 (String.length s - 1)) (Hashtbl.add count ch 1)
  in
  check str1 Hashtbl.create


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
