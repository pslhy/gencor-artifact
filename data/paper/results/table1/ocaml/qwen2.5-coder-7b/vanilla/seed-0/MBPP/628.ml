let rec replace_spaces (string : string) : string = 
  let size = String.length string in
  let rec aux acc i =
    if i < 0 then acc
    else if string.[i] = ' ' then aux (acc ^ "%20") (i - 1)
    else aux (string.[i] :: acc) (i - 1)
  in
  String.concat "" (List.rev (aux [] (size - 1)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
