let rec split_Arr (l : int list) (n : int) : int list =
  if n = 0 then l else
  match l with
  | [] -> failwith "Invalid n"
  | h :: t ->
    if n >= 1 then
      let (q, r) = split_Arr t (n - 1) in
      (h :: q) @ r
    else
      failwith "Invalid n"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
