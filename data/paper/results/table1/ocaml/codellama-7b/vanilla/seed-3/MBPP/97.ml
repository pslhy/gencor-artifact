let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | [] -> []
  | h :: t ->
    let fh = frequency_list h in
    let ft = frequency_lists t in
    List.rev_append fh ft

and frequency_list (list2 : int list) : (int * int) list =
  match list2 with
  | [] -> []
  | h :: t ->
    let fh = if List.mem h t then 2 else 1 in
    (h, fh) :: frequency_list t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
