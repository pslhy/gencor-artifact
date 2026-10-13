
let rec replace_specialchar (text : string) : string = 
  let rec helper (s: string) (idx:int) acc=
    if (idx < 0) then acc
    else
      let char = String.unsafe_get s idx in
      if (char = ' ' || char = ',' || char = '.') then
        helper s (idx - 1) (String.concat "" [acc; ":"])
      else
        helper s (idx - 1) ((String.make 1 char) ^ acc)
  in
  helper text (String.length text - 1) ""
|> String.trim

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
