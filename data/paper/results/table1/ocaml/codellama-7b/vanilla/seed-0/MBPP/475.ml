let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
  match dict1 with
  | [] -> []
  | (k, v) :: t -> (
    let rest = sort_counter t in
    match rest with
    | [] -> [(k, v)]
    | (k', v') :: t' -> if v <= v' then (k, v) :: rest else (k', v') :: (k, v) :: t'
);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
