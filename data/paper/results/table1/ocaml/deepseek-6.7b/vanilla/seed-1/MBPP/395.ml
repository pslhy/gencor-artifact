let rec first_non_repeating_character (str1 : string) : string option =
  match str1 with
  | "" -> None
  | s ->
     let letter_count = List.fold_left (fun count c ->
       if String.contains_from s 0 str1.[0] c then count + 1 else count
     ) 0 (String.to_list s) in
     if letter_count = 1 then Some (String.sub s 0 1)
     else first_non_repeating_character (String.sub s 1 (String.length s - 1))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
