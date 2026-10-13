let rec first_non_repeating_character (str1 : string) : string option =
  match str1.[0] with
  | exception Invalid_argument _ -> None
  | ch ->
    let rec loop i =
      if ch = str1.[i] then
        None
      else
        Some str1.[i]
    in
    loop 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
