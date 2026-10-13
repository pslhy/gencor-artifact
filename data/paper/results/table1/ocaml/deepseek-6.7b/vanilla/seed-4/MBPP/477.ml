let rec is_lower (string : string) : string =
  let len = String.length string in
  let rec helper (index : int) (acc : string) : string =
    if index = len then acc
    else
      let char = String.get string index in
      let new_char = Char.lowercase_ascii char in
      helper (index + 1) (acc ^ (String.make 1 new_char))
  in
  helper 0 ""

let string_lowercase (s: string) : string =
  is_lower s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
