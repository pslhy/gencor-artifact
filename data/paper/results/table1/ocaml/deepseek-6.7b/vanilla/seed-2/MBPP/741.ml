let rec all_Characters_Same (s : string) : bool =
  let len = String.length s in
  if len <= 1 then
    true
  else
    let rec check i =
      if i = len then
        true
      else if s.[i] = s.[0] then
        check (i + 1)
      else
        false
    in
    check 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
