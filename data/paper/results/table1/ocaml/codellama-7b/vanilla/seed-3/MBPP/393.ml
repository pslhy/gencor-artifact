let rec max_length_list (input_list : int list list) :  int * int list =
  match input_list with
  | [] -> failwith "empty list"
  | x :: xs ->
      let rec length_list (input_list : int list) : int =
        match input_list with
        | [] -> 0
        | x :: xs -> 1 + (length_list xs)
      in
      let max = List.fold_left
          (fun (max_length, max_list) (cur_length, _) ->
               if cur_length > max_length then (cur_length, x)
               else (max_length, max_list)) (0, []) (List.map (fun x -> (length_list x, x)) input_list) in
      max


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
