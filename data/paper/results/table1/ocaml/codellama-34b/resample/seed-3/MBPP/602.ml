(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
let rec first_repeated_char (str1 : string) : string option =
  if str1 = "" then
    None
  else
    let rec loop i =
      if i = String.length(str1) - 1 then
        first_repeated_char (String.sub(str1, 0, i - 1))
      else
        let rec inner v =
          if String.sub(str1, i, 1) = String.sub(str1, v, 1) then
            Some (String.sub(str1, i, 1))
          else
            if v = String.length(str1) then
              first_repeated_char (String.sub(str1, 0, i - 1))
            else
              inner (v + 1)
      in inner 0
    in loop 0

