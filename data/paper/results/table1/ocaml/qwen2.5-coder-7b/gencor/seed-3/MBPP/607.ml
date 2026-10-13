
let rec find_literals (text : string) (pattern : string) :  string * int * int = 
 let aux acc pattern text i = 
    match String.index_opt pattern text with
    | None -> acc
    | Some j -> let start = i + j in
      let end_index = start + (String.length pattern) - 1 in
      let (new_acc, new_i) = if end_index >= String.length text then
        (acc, i + j + 1)
      else
        (acc ^ (String.sub text start (end_index - start + 1)), i + j + 1) in
      new_acc, new_i
  in 
  let (res, _)  = aux "" pattern text 0 in 
  res, 0, String.length res

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
