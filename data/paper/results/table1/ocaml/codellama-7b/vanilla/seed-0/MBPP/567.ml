let rec issort_list (list1 : int list) : bool =
  match list1 with
  | [] -> true
  | h :: t -> List.for_all (fun x -> x >= h) t && issort_list t
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a specified list is sorted or not. *)
