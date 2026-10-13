let rec string_to_list (string : string) : string list = 
  let rec split acc = function
    | "" -> List.rev acc
    | s -> 
        let space_pos = try String.index s ' ' with Not_found -> String.length s in
        let word = String.sub s 0 space_pos in
        split (word :: acc) (String.sub s (space_pos + 1) (String.length s - space_pos - 1))
  in
  split [] string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
