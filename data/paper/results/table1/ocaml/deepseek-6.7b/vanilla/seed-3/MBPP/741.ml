let rec all_Characters_Same (s : string) : bool =
  match s with
  | "" -> true
  | _ ->
      let first_char = String.get s 0 in
      let rest_string = String.sub s 1 (String.length s - 1) in
      (String.make (String.length s) first_char) = s
      && all_Characters_Same rest_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
