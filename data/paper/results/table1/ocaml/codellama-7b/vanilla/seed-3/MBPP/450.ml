let rec extract_string (str : string list) (l : int) : string list =
  if l = 0 then
    []
  else if List.length str = 0 then
    []
  else
    let head = List.hd str in
    let tail = List.tl str in
    head :: (extract_string tail (l - 1))

let extract_strings (str : string list) (l : int) : string list =
  List.map (fun s -> String.sub s 0 l) str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract specified size of strings from a given list of string values. *)
