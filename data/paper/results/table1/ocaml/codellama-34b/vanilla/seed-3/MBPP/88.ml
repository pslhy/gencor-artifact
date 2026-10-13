let rec freq_count (list1 : int list) : (int * int) list =
  let rec helper (l : int list) (n : int list) : (int * int) list =
    match l with
    | [] -> []
    | h :: t -> (h, List.length (List.filter (fun x -> x = h) n)) :: helper t n in
  helper list1 list1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
