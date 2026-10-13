let rec max_length_list (input_list : int list list) :  int * int list =
match input_list with
| h :: t ->
	let (max_length, max_list) = max_length_list t in
    let h_length = List.length h in
    if h_length > max_length then (h_length, h) else (max_length, max_list)
| _ -> (0, [])
in max_length_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
