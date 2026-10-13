let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | [] -> []
  | (hd::tl) -> let rec count (num : int) : int = 
                    match list1 with
                    | [] -> 0
                    | (hd::tl) -> (if num = hd then 1 else 0) + count num tl
                 in count hd 0 (* get the count of the current element *)
                     :: frequency_lists tl (* get the count of the rest elements *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
