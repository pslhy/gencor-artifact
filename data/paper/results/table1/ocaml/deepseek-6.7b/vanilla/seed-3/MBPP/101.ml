let rec kth_element (arr : int list) (k : int) : int =
  match arr, k with
  | [], _ -> raise (Invalid_argument "Empty list")
  | _ :: t, 1 -> List.hd arr
  | h :: t, n when n > 0 -> kth_element t (n-1)
  | _ -> raise (Invalid_argument "Invalid index")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
