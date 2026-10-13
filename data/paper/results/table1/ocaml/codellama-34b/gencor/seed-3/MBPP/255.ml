
let rec combinations_colors (l : string list) (n : int) : string list list =
  if n = 1 then
    List.map (fun x -> [x]) l
  else
    let new_combs = combinations_colors l (n - 1) in
    List.concat (List.map (fun x -> List.map (fun y -> x @ y) new_combs) l)

let print_combinations (l : string list list) : unit = 
    List.map (fun c -> Printf.sprintf "%s" (String.concat "" c)) l

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)
