let rec max_length_list (input_list : int list list) :  int * int list =
  List.fold_left (fun (len, max_list) list -> 
        if List.length list > len then 
          (List.length list, list)
        else 
          (len, max_list)) 
    (0, []) input_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
