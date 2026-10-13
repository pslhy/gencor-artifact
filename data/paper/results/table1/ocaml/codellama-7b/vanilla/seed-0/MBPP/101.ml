let rec kth_element (arr : int list) (k : int) : int =
  match arr with
  | [] -> failwith "Index out of bounds"
  | h :: t ->
    if k = 1 then h
    else
      match kth_element t (k - 1) with
      | Some x -> x
      | None -> failwith "Index out of bounds"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
