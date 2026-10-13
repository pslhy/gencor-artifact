
let rec max_length_list (input_list : int list list) :  int * int list =
  if List.length input_list = 0 then (0, [])
  else 
    let (len, sub_list, _) = List.fold_left (fun (acc_len, acc_list, i) list ->
      if List.length list > acc_len then (List.length list, list, Some i)
      else (acc_len, acc_list, Some i)
  ) (1, [], None) input_list in
  (len, sub_list)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
