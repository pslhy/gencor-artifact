let rec max_aggregate (stdata :  (string * int) list) :  string * int =
  match stdata with
  | [] -> failwith "List is empty"
  | (name, score)::[] -> (name, score)
  | (name, score)::t -> 
    let (max_name, max_score) = max_aggregate t in
    if score > max_score then (name, score) 
    else (max_name, max_score)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
