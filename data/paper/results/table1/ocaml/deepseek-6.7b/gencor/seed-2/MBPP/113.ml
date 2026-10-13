
let rec check_integer (text : string) : bool =
  let len = String.length text in
  if len = 0 then false
  else if len = 1 && (text.[0] = '-' || text.[0] = '+') then false
  else
    let rec loop i =
      if i = len then true
      else if not (Char.code text.[i] >= 48 && Char.code text.[i] <= 57) then false
      else loop (i + 1) in
    loop 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
