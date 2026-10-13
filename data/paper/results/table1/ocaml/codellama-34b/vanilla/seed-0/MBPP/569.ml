let rec sort_sublists (list1 : string list list) : string list list =
  match list1 with
  | [] -> []
  | h :: t -> 
      let (sorted_h, sorted_t) = sort_sublists h t in
      (sorted_h :: sorted_t)

let sort_sublists_test = [ [ "c"; "b"; "a" ]; [ "z"; "y"; "x" ] ] |> sort_sublists = [ [ "a"; "b"; "c" ]; [ "x"; "y"; "z" ] 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
